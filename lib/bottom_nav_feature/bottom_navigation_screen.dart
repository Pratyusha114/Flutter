
import 'package:flutter/material.dart';
import 'package:flutter_basics/core/navigations/routes.dart';
import 'package:flutter_basics/menu_feature/menu_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Bottom Navigation"),
      ),
      body: Center(child: BottomNavigationMenu()),
    );
  }
}

class BottomNavigationMenu extends StatelessWidget {
  final Map<int, String> titles = {
    0: "general Bottom Nav",
    1: "BottomNav with Badges",
    2: "Bottom Nav with Notch"
  };

  BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return CardItem(
            onTap: () {
              switch(index){
                case 0 :{
                  Get.toNamed(Routes.generalBottomNav);
                }
                case 1: {
                    Get.toNamed(Routes.bottomNavWithBadges);
                }
                case 2: {
                  Get.toNamed(Routes.bottomNavWithNotch);
                }
              }
            },
            title: titles[index]!,
            cardColor: Colors.deepOrangeAccent,
          );
        });
  }
}
