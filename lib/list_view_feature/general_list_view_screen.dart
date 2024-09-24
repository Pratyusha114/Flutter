import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GeneralListView extends StatelessWidget {
  const GeneralListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("General List View"),
        ),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Center(child: Text(index.toString(),style: const TextStyle(fontWeight: FontWeight.bold),));
            }));
  }
}
