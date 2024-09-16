import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/drop_down_feature/drop_down_search.dart';
import 'package:get/get.dart';

import 'drop_down_with_text_field.dart';

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
               Text("Drop down with Text Field"),
              DropDownWithTextField(),
              Text("Search Drop Down"),
              SearchableDropdown()

            ],
          )
      ),
    );
  }
}

class GeneralDropDown extends StatefulWidget {
  const GeneralDropDown({super.key});

  @override
  State<GeneralDropDown> createState() => _GeneralDropDownState();
}

class _GeneralDropDownState extends State<GeneralDropDown> {

  List<GeneralDropdownModel> dropDownList = [
    GeneralDropdownModel(1,"Apples"),
    GeneralDropdownModel(2,"Bananas"),
    GeneralDropdownModel(3,"Grapes"),
    GeneralDropdownModel(4,"Oranges"),
    GeneralDropdownModel(5,"pineapples"),
  ];

  GeneralDropdownModel? initialValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
      value: initialValue,
        alignment: Alignment.bottomRight,
        isExpanded: true,
        items: dropDownList
            .map((GeneralDropdownModel item) => DropdownMenuItem(value: item, child: Text(item.title)))
            .toList(),
        onChanged: (item) {
          setState(() {
            initialValue = item;
          });
        });
  }
}

class GeneralDropdownModel {

  final int id;
  final String title;

  GeneralDropdownModel(this.id, this.title);
}



