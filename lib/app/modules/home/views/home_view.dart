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
      backgroundColor: Styles.azulBajito,
      body: SingleChildScrollView(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            ClipPath(
              clipper: LoginClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                color: Styles.azulIteso,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.32,
              left: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "welcome".tr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "text_login".tr,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.57,
              left: 0,
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
