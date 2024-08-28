import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownScreen extends StatelessWidget {
  const DropDownScreen({super.key});

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
        centerTitle: true,
        title: const Text("Drop Down"),
      ),
      body: const Center(
          child: Column(
        children: [
          Text("General Drop Down"),
          GeneralDropDown(),
          DropDownWithTextField()
        ],
      )),
    );
  }
}

class GeneralDropDown extends StatefulWidget {
  const GeneralDropDown({super.key});

  @override
  State<GeneralDropDown> createState() => _GeneralDropDownState();
}

class _GeneralDropDownState extends State<GeneralDropDown> {
  List<String> dropDownList = [
    "Apples",
    "Bananas",
    "Grapes",
    "Oranges",
    "pineapples",
  ];

  String? initialValue = "";

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
        alignment: Alignment.bottomRight,
        isExpanded: true,
        items: dropDownList
            .map((String str) => DropdownMenuItem(value: str, child: Text(str)))
            .toList(),
        onChanged: (str) {
          setState(() {
            initialValue = str!;
          });
        });
  }
}

class DropDownWithTextField extends StatefulWidget {
  const DropDownWithTextField({super.key});

  @override
  State<DropDownWithTextField> createState() => _DropDownWithTextFieldState();
}

class _DropDownWithTextFieldState extends State<DropDownWithTextField> {
  List<String> dropDownList = ["pens", "scale", "pencils"];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: const InputDecoration(border: OutlineInputBorder()),
      items: dropDownList
          .map((str) => DropdownMenuItem(value: str, child: Text(str)))
          .toList(),
      onChanged: (str) {},
    );
  }
}
