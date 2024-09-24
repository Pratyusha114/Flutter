import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridViewWithBuilder extends StatelessWidget {
  const GridViewWithBuilder({super.key});

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
        title: const Text("Grid With Builder"),
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            mainAxisSpacing: 2,
            crossAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text(
                  index.toString(),
                  style: const TextStyle(color: Colors.brown, fontSize: 20),
                ));
          }),
    );
  }
}
