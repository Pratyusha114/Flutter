import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFiledScreen extends StatelessWidget {
  TextFiledScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  final TextEditingController _outlineTextFieldController =
      TextEditingController();

  final TextEditingController _textFieldController = TextEditingController();

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
          title: const Text("Text Fields"),
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const Text("General Text Field without Styling"),
                    TextField(
                      controller: _controller,
                      onChanged: (text) {
                        print(text);
                      },
                    ),
                    const Text("Outlined Text Field without Styling"),
                    TextField(
                      controller: _outlineTextFieldController,
                      onChanged: (str) {},
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                    ),
                    const Text(
                      "Text filed with Label and Icons",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(children: [
                          const Text("Text fields with Icon"),
                          TextField(
                            controller: _textFieldController,
                            onChanged: (str) {},
                            decoration: const InputDecoration(
                                icon: Icon(Icons.arrow_forward,
                                    color: Colors.red),
                                label: Text("Label"),
                                labelStyle: TextStyle(color: Colors.blue)),
                          ),
                          const Text("Text filed with prefix Icon"),
                          TextField(
                            controller: _textFieldController,
                            onChanged: (str) {},
                            decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.check,
                                  color: Colors.pinkAccent,
                                ),
                                prefixIconColor: Colors.blue),
                          ),
                          const Text("Text filed with prefix text"),
                          TextField(
                            controller: _textFieldController,
                            onChanged: (str) {},
                            decoration: const InputDecoration(
                                prefixStyle:
                                    TextStyle(color: Colors.deepOrangeAccent),
                                prefixText: "Go"),
                          ),
                          const Text(
                              "Text filed with Suffix Icon and hint text"),
                          TextField(
                            controller: _textFieldController,
                            onChanged: (str) {},
                            decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.password_outlined),
                                suffixIconColor: Colors.orange,
                                hintText: "Enter your name",
                                hintStyle:
                                    TextStyle(color: Colors.lightGreenAccent)),
                          ),
                          const Text("Text Field with Suffix Text"),
                          TextField(
                            controller: _controller,
                            onChanged: (str) {},
                            decoration: const InputDecoration(
                                suffixText: "reach",
                                suffixStyle:
                                    TextStyle(color: Colors.deepOrange)),
                          )
                        ])),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Divider(color: Colors.deepOrange,height: 3,thickness: 2,), Text("The End"), Divider()])
                  ],
                ))));
  }
}
