import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

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
          title: const Text("Buttons"),
        ),
        body: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("Text Button"),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w200,
                            color: Colors.white24)),
                    child: Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text("Hi"))),
                const Text("Outlined Button"),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(
                            side: BorderSide(
                                color: Colors.purpleAccent, width: 20)),
                        side: const BorderSide(
                            color: Colors.purple,
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside)),
                    child:
                        const Row(children: [Icon(Icons.person), Text("Hi")])),
                const Text("Elevated Button"),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.orangeAccent,
                      backgroundColor: Colors.deepOrange,
                    ),
                    child: const Text(
                      "Hi",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            )));
  }
}
