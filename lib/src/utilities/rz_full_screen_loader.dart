import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'rz_animation_loader_widget.dart';

class RzFullScreenLoader {
  RzFullScreenLoader._();
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_)=> PopScope(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 250,),
                RzAnimationLoaderWidget(text: text, animation: animation),
              ],
            ),
          ),
      ),
    );
  }

  static void popUpCircular() {
    /*Get.defaultDialog(
      title: "",
      onWillPop: () async => false,
      content: RzCircularLoader(),
      backgroundColor: Colors.transparent,
    );*/
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}