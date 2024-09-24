import 'package:flutter/material.dart';
import 'package:flutter_basics/core/navigations/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/navigations/graph.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GetMaterialApp(
      title: 'Flutter Basics',
      getPages: routes,
      initialRoute: Routes.launcherScreen,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    ));
  }
}
