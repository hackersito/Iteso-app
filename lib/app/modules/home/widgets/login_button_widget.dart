import 'package:flutter/material.dart';
import 'package:iteso_app/values/styles.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  final Function onPress;
  const LoginButton({Key key, @required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 45,
        width: 110,
        child: Row(
          children: [
            Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(width: 5),
            Text("login".tr, style: TextStyle(color: Colors.white))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        decoration: BoxDecoration(
          color: Styles.azulIteso,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
