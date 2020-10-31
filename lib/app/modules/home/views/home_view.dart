import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iteso_app/Network/network.dart';
import 'package:iteso_app/app/modules/home/controllers/home_controller.dart';
import 'package:iteso_app/app/widgets/login_clipper.dart';
import 'package:iteso_app/values/styles.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.azulBajito,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Network.login("if715410", "Cachimba1999")
            .then((value) => controller.count.value = value.token),
        child: Icon(Icons.ac_unit),
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: LoginClipper(),
            clipBehavior: Clip.hardEdge,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              color: Styles.azulIteso,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "welcome".tr,
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "text_logging".tr,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
