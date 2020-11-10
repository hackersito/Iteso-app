import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iteso_app/app/controllers/db_controller.dart';
import 'package:iteso_app/app/controllers/login_controller.dart';
import 'package:iteso_app/app/modules/home/widgets/login_button_widget.dart';
import 'package:iteso_app/app/modules/home/widgets/login_textformfield_widget.dart';
import 'package:iteso_app/app/routes/app_pages.dart';
import 'package:iteso_app/app/widgets/login_clipper.dart';
import 'package:iteso_app/network/network.dart';
import 'package:iteso_app/values/styles.dart';

class HomeView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _emailFocus = FocusNode();
  final _passFocus = FocusNode();

  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  void login() {
    if (_formKey.currentState.validate()) {
      Network.login(_emailController.text, _passController.text).then((value) {
        if (GetUtils.isNullOrBlank(value?.token)) {
          Get.snackbar("error".tr, "bad_pass".tr);
          _passController.text = "";
        } else {
          value.save(Get.find<DbController>().db);
          Get.put(LoginController(value));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.azulIteso,
      body: LayoutBuilder(
        builder: (_, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: constraints,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                const ClipColor(),
                const LogoImage(),
                const WelcomeText(),
                Positioned(
                  bottom: MediaQuery.of(context).viewInsets.bottom != 0
                      ? MediaQuery.of(context).viewInsets.bottom
                      : Get.context.height * 0.21,
                  left: 0,
                  width: Get.context.width,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: <Widget>[
                          LoginTextFormField(
                            hint: "username",
                            controller: _emailController,
                            focusNode: _emailFocus,
                            validator: (value) => !GetUtils.isUsername(value)
                                ? "err_user".tr
                                : null,
                            nextFocusNode: _passFocus,
                            isAccount: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          LoginTextFormField(
                            hint: "pass",
                            controller: _passController,
                            validator: (value) => GetUtils.isNullOrBlank(value)
                                ? "err_pass".tr
                                : null,
                            icon: Icons.vpn_key,
                            focusNode: _passFocus,
                            onFieldSubmitted: (_) => login(),
                            obscureText: true,
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              LoginButton(onPress: login),
                              Flexible(
                                child: Center(
                                  child: GestureDetector(
                                    onTap: Network.launchEmail,
                                    child: Text(
                                      "forgot_pass".tr,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: Get.context.height * 0.12),
                    child: GestureDetector(
                      onTap: Network.launchUrl,
                      child: Text(
                        "privacy".tr,
                        style: Styles.textoBlanco,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    color: CustomColors.azulIteso[600],
                    width: Get.context.width,
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.SERVICIOS_ITESO),
                      child: Text(
                        "services".tr,
                        style: Styles.textoBlanco,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClipColor extends StatelessWidget {
  const ClipColor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topCenter,
      heightFactor: 0.65,
      child: ClipShadow(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 10.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        clipper: LoginClipper(),
        child: Container(
          color: CustomColors.blancoLight,
        ),
      ),
    );
  }
}

class LogoImage extends StatelessWidget {
  const LogoImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.context.height * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image(
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.fitWidth,
            width: 300.0,
          ),
        ],
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Get.context.height * 0.32,
      left: 45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "welcome".tr,
            style: TextStyle(
                color: CustomColors.azulBajito,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "text_login".tr,
            style: TextStyle(
                color: CustomColors.azulBajito, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
