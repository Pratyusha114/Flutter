import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'general_bottom_nav_controller.dart';

class GeneralBottomNav extends StatelessWidget {
  const GeneralBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final GeneralBottomNavController generalBottomNavController =
        Get.put(GeneralBottomNavController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("General Bottom Navigation"),
        centerTitle: true,
      ),
      body: Obx(() => IndexedStack(
            index: generalBottomNavController.tabIndex.value,
            children: const [HomeScreen(), Text("Favourites")],
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.limeAccent,
            unselectedItemColor: Colors.white,
            currentIndex: generalBottomNavController.tabIndex.value,
            onTap: (int index) {
              generalBottomNavController.changeTab(index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "favorite")
            ],
          )),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Home Screen"));
  }
}
