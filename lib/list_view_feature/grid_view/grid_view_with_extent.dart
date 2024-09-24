import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GridViewWithExtent extends StatelessWidget {
  const GridViewWithExtent({super.key});

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
          title: const Text("Grid with Extent")),
      body: GridView.extent(
        crossAxisSpacing: 2,
        mainAxisSpacing: 4,
        maxCrossAxisExtent: 20,
        children: List.generate(
            100,
            (index) => Container(
                  color: Colors.brown,
                  child: Text(
                    index.toString(),
                    style: const TextStyle(color: Colors.redAccent),
                  ),
                )),
      ),
    );
  }
}
