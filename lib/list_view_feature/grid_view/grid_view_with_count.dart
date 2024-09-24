import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GridViewWithCount extends StatelessWidget {
  const GridViewWithCount({super.key});

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
          title: const Text("Grid View with .Count"),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
                10,
                (index) => Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                      color: Colors.yellow,
                      child: Text(
                        index.toString(),
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ))));
  }
}
