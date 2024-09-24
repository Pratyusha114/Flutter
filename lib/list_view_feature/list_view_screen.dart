import 'package:flutter/material.dart';
import 'package:flutter_basics/core/navigations/routes.dart';
import 'package:flutter_basics/menu_feature/menu_screen.dart';
import 'package:get/get.dart';

class ListViewScreen extends StatelessWidget {
  final Map<int, String> titles = {
    0: "General List View",
    1: "Grid View",
    2: "staggered List View"
  };

  ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("List View"),
      ),
      body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return CardItem(
              title: titles[index]!,
              onTap: () {
                switch (index) {
                  case 0:
                    {
                      Get.toNamed(Routes.generalListView);
                    }
                  case 1:
                    {
                      Get.toNamed(Routes.gridView);
                    }
                  case 2:
                    {
                      Get.toNamed(Routes.staggeredListView);
                    }
                }
              },
              cardColor: Colors.yellow,
            );
          }),
    );
  }
}
