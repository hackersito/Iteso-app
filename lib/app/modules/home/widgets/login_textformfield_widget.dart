import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iteso_app/values/styles.dart';

class LoginTextFormField extends StatelessWidget {
  final TextStyle _textStyle =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.w300);

  final String hint;
  final FormFieldValidator<String> validator;
  final bool obscureText;
  final ValueChanged<String> onFieldSubmitted;

  final FocusNode focusNode;
  final FocusNode nextFocusNode;
  final IconData icon;

  const LoginTextFormField(
      {Key key,
      @required this.hint,
      this.validator,
      this.obscureText,
      this.onFieldSubmitted,
      this.focusNode,
      this.nextFocusNode,
      this.icon = Icons.account_circle})
      : super(key: key);

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
          color: Styles.azulBajito[400],
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ]),
      child: TextFormField(
          onFieldSubmitted: onFieldSubmitted ?? onField,
          style: _textStyle,
          validator: validator,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.white60,
            ),
            hintText: hint.tr,
            hintStyle: _textStyle,
            border: InputBorder.none,
          )),
    );
  }
}
