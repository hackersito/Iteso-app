import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiciosItesoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Servicios ITESO'),
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
  final String androidPackage;
  final String iOSPackage;

  final String title;
  final String photoPath;

  const ItesoAppService(
      {Key key,
      this.androidPackage,
      this.iOSPackage,
      this.title,
      this.photoPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(title.tr),
    );
  }
}
