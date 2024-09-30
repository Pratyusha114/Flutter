import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppBarWithActions extends StatelessWidget {
  const AppBarWithActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App bar with Actions"),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_outlined),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          AppBar(
            title: const Text("App bar with Pop-up Menu"),
            leading: const Icon(Icons.arrow_back),
            actions: [
              PopupMenuButton(
                  position: PopupMenuPosition.under,
                  onSelected: (int index) {},
                  itemBuilder: (BuildContext context) {
                    return [
                      const PopupMenuItem<int>(
                          value: 0,
                          child: Row(children: [
                            Icon(Icons.logout_outlined),
                            Text('Logout')
                          ])),
                      const PopupMenuItem<int>(
                          value: 1,
                          child: Row(children: [
                            Icon(Icons.settings),
                            Text('Settings')
                          ]))
                    ];
                  })
            ],
          ),
        ],
      ),
    );
  }
}
