
import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxWidget> {
  bool _checked = false;

  @override
  Widget build(BuildContext buildContext) {
    return Row(children: [
      Checkbox(
        value: _checked,
        onChanged: (checked) {
          setState(() {
            _checked = !_checked;
          });
        },
      ),
      const Text("Apples")
    ]);
  }
}

class DynamicCheckBoxList extends StatefulWidget {
  const DynamicCheckBoxList({super.key});

  @override
  State<DynamicCheckBoxList> createState() => _CheckBoxItem();
}

class _CheckBoxItem extends State<DynamicCheckBoxList> {
  final List<DataModelClass> _checkBoxData = getData();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (var model in _checkBoxData)
        Row(children: [
          Checkbox(
            value: model.isSelected,
            onChanged: (checked) {
              setState(() {
                model.isSelected = !model.isSelected;
              });
            },
          ),
          Text(model.title)
        ])
    ]);
  }
}

class DataModelClass {
  String title;
  bool isSelected;

  DataModelClass({required this.title, this.isSelected = false});
}

List<DataModelClass> getData() {
  return [
    DataModelClass(title: "Apples"),
    DataModelClass(title: "Bananas"),
    DataModelClass(title: "Pineapple"),
    DataModelClass(title: "CustardApple"),
  ];
}