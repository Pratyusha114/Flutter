import 'package:flip_card/flip_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/core/navigations/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

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
          title: const Text("Grid View"),
        ),
        body: GridView.count(crossAxisCount: 2, children: [
          FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(4),
              color: Colors.green,
              child: const Text("Grid View With Count"),
            ),
            back: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
                child: RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                      text: ".Count",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow),
                    ),
                    const TextSpan(
                        text:
                            " constructor of generating grid can be used if we have limited or less number of the items to be shown on the grid",
                        style: TextStyle(fontSize: 20)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(Routes.gridViewWithCount);
                          },
                        text: "View...",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.orangeAccent,
                            decoration: TextDecoration.underline))
                  ]),
                )),
          ),
          FlipCard(
              front: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
                child: const Text("Grid View With Builder"),
              ),
              back: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
                child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.gridViewWithBuilder);
                    },
                    child: const Text(
                      "View..",
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          decoration: TextDecoration.underline),
                    )),
              )),
          FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
                child: const Text("Grid View With Extent"),
              ),
              back: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
                child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.gridViewWithExtent);
                    },
                    child: const Text(
                      "View..",
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          decoration: TextDecoration.underline),
                    )),
              ))
        ]));
  }
}
