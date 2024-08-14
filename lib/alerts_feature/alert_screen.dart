import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Alerts"),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
            child: Column(
          children: [
            TextButton(
              onPressed: () {
                showGeneralAlert(context);
              },
              child: const Text("Show  General Alert"),
            ),
            TextButton(
                onPressed: () {
                  showAlertWithCancelAndOk(context);
                },
                child: const Text(
                    "Show  Alert with confirmation and reject options")),
            TextButton(
                onPressed: () {
                  showCustomAlert(context);
                },
                child: const Text("Custom Alert"))
          ],
        )));
  }
}

void showGeneralAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("Simple Alert"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Ok"))
          ],
        );
      });
}

void showAlertWithCancelAndOk(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("Alert with confirmation and rejection buttons"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Ok")),
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Cancel"))
          ],
        );
      });
}

void showCustomAlert(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            backgroundColor: Colors.white10,
            alignment: Alignment.center,
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/image.png",
                      alignment: Alignment.center,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: OutlinedButton.styleFrom(
                            shape: const StadiumBorder(
                                side: BorderSide(color: Colors.blueAccent))),
                        child: const Text("Done"))
                  ],
                )));
      });
}
