import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiciosItesoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('services'.tr),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ItesoAppService(
              title: "transport",
            )
          ],
        ));
  }
}

class ItesoAppService extends StatelessWidget {
  final String title;

  const ItesoAppService({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              6.0, // Move to right 10  horizontally
              6.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Stack(
        children: [
          Container(
            height: 200,
            child: Opacity(
              opacity: 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/transporte.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.all(10),
                width: (MediaQuery.of(context).size.width - 40) * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                ),
                margin: EdgeInsets.only(bottom: 15, left: 15),
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width - 40) * 0.7,
                  child: Text(
                    title.tr,
                    textAlign: TextAlign.center,
                    style: Get.textTheme.headline6.copyWith(fontSize: 17),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
