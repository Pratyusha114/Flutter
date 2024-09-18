import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_nav_feature/badges_bottom_nav/badges_bottom_nav_controller.dart';
import 'package:get/get.dart';

class BadgesBottomNav extends StatelessWidget {
  BadgesBottomNav({super.key});

  final BadgesBottomNavController badgesBottomNavController =
  Get.put(BadgesBottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Badges Bottom Nav Bar"),
        centerTitle: true,
      ),
      body: Obx(() =>
          IndexedStack(
            index: badgesBottomNavController.selectedTab.value,
            children: const [
              Text("Contacts", textAlign: TextAlign.center),
              Text("Favorite"),
              Text("Recent")
            ],
          )),
      bottomNavigationBar: Obx(() =>
          BottomNavigationBar(
            currentIndex: badgesBottomNavController.selectedTab.value,
            onTap: (index) {
              badgesBottomNavController.changeTab(index);
            },
            items: badgesBottomNavController.list
                .map((BottomMenuItemsModel itemsModel) =>
                BottomNavigationBarItem(
                    label: itemsModel.label,
                    icon: itemsModel.showBadge
                        ? Badge(
                          child: Icon(itemsModel.icon),
                    )
                        : Icon(itemsModel.icon)))
                .toList(),
          )),
    );
  }
}

class BottomMenuItemsModel {
  int id;
  String label;
  IconData icon;
  bool showBadge;
  String labelText;

  BottomMenuItemsModel({this.id = 0,
    this.label = "",
    this.icon = Icons.abc,
    this.showBadge = false,
    this.labelText = ""});
}
