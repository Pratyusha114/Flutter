import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'badges_bottom_nav_screen.dart';

class BadgesBottomNavController extends GetxController {
  List<BottomMenuItemsModel> list = [
    BottomMenuItemsModel(id: 1, label: "Contacts", icon: Icons.person,showBadge: true),
    BottomMenuItemsModel(id: 2, label: "Favorite", icon: Icons.favorite),
    BottomMenuItemsModel(
        id: 3,
        label: "Recent",
        icon: Icons.recent_actors_rounded,
        showBadge: true,
    labelText: "2")
  ];

  var selectedTab = 0.obs;

  void changeTab(int index) {
    selectedTab.value = index;
  }
}
