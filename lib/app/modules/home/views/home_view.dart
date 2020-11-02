import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iteso_app/app/modules/home/controllers/home_controller.dart';
import 'package:iteso_app/app/modules/home/widgets/login_button_widget.dart';
import 'package:iteso_app/app/modules/home/widgets/login_textformfield_widget.dart';
import 'package:iteso_app/app/widgets/login_clipper.dart';
import 'package:iteso_app/values/styles.dart';

class HomeView extends GetView<HomeController> {
  final _formKey = GlobalKey<FormState>();

  final _emailFocus = FocusNode();
  final _passFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Styles.azulIteso,
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
                      : MediaQuery.of(context).size.height * 0.21,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: <Widget>[
                          LoginTextFormField(
                            hint: "username",
                            focusNode: _emailFocus,
                            nextFocusNode: _passFocus,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          LoginTextFormField(
                            hint: "pass",
                            icon: Icons.vpn_key,
                            focusNode: _passFocus,
                            obscureText: true,
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              LoginButton(
                                onPress: () {},
                              ),
                              Flexible(
                                child: Center(
                                  child: Text(
                                    "forgot_pass".tr,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
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
          color: Styles.blancoLight,
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
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
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
      top: MediaQuery.of(context).size.height * 0.32,
      left: 45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "welcome".tr,
            style: TextStyle(
                color: Styles.azulBajito,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "text_login".tr,
            style: TextStyle(
                color: Styles.azulBajito, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
