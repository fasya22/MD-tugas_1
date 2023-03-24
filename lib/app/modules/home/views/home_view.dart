import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("HOME"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        color: Colors.green,
        child: LayoutBuilder(builder: (context, Constraints) {
          double lebarKuning = Constraints.maxWidth;
          double tinggiKuning = Constraints.maxHeight;
          return Center(child: Stack (
            children: [
              Container(
                width: lebarKuning * 0.3,
                height: tinggiKuning * 0.3,
                color: Colors.amber,
              ),
            ],
          )
          );
        }
        ),
      ),);
  }
}
