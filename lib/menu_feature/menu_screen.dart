import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../core/navigations/routes.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Basics"),
      ),
      body: const MenuOptions(
          titles: {0: "Buttons", 1: "Alert", 2: "Bottom Navigation"}),
    );
  }
}

class MenuOptions extends StatelessWidget {
  final Map<int, String> titles;

  const MenuOptions({super.key, required this.titles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return CardItem(
          title: titles[index]!,
          onTap: () {
            switch (index) {
              case 0:
                {
                  Get.toNamed(Routes.buttons);
                }
              case 1:
                {
                  Get.toNamed(Routes.alerts);
                }
            }
          },
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final Color cardColor;

  const CardItem(
      {super.key,
      required this.title,
      required this.onTap,
      this.cardColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap();
        },
        child: Card(
          color: cardColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  const Icon(
                    Icons.arrow_forward,
                  ),
                ]),
          ),
        ));
  }
}
