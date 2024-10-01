import 'package:flutter/material.dart';
import 'package:flutter_basics/basic_api_call/controller/user_controller.dart';
import 'package:get/get.dart';

class ApiCallScreen extends GetView<UserController> {
  const ApiCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getUsers();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Sample Api with MVVM"),
      ),
      body: Obx(() {
        if (controller.apiResponseState.value.loading == true) {
          return Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator(color: Colors.blue,));
        } else if (controller.apiResponseState.value.alertModel?.showAlert ==
            true) {
          return AlertDialog(
            title: const Text("Error"),
            content:
                Text(controller.apiResponseState.value.alertModel!.message!),
            actions: [TextButton(onPressed: () {
              controller.closeAlert();
              }, child: const Text("ok"))],
          );
        } else {
          return ListView.builder(
              itemCount: controller.list.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Text(controller.list[index].title!)));
              });
        }
      }),
    );
  }
}
