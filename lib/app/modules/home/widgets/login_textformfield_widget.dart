import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iteso_app/values/styles.dart';

class LoginTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obscureText;
  final ValueChanged<String> onFieldSubmitted;

  final FocusNode focusNode;
  final FocusNode nextFocusNode;
  final IconData icon;
  final bool isAccount;

  const LoginTextFormField({
    Key key,
    @required this.hint,
    @required this.controller,
    this.validator,
    this.obscureText,
    this.onFieldSubmitted,
    this.focusNode,
    this.nextFocusNode,
    this.icon = Icons.account_circle,
    this.isAccount = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    onField(value) {
      focusNode?.unfocus();
      if (nextFocusNode != null) {
        FocusScope.of(context).requestFocus(nextFocusNode);
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          color: CustomColors.azulBajito[400],
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 10.0), //(x,y)
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
                onFieldSubmitted: onFieldSubmitted ?? onField,
                style: Styles.textoBlanco,
                validator: validator,
                obscureText: obscureText ?? false,
                controller: controller,
                decoration: InputDecoration(
                  icon: Icon(
                    icon,
                    color: Colors.white60,
                  ),
                  hintText: hint.tr,
                  hintStyle: Styles.textoBlanco,
                  border: InputBorder.none,
                )),
          ),
          if (isAccount)
            Text(
              "@iteso.mx",
              style: TextStyle(color: Colors.white, fontSize: 17),
            )
        ],
      ),
    );
  }
}
