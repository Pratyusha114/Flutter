import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<StatefulWidget> createState() => _GeneralRadioButton();
}

class _GeneralRadioButton extends State<RadioButtonWidget> {
  int _selectedValue = -1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RadioListTile(
          title: const Text("Option 1"),
          value: 0,
          groupValue: _selectedValue,
          onChanged: (selected) => {
                setState(() {
                  _selectedValue = selected!;
                })
              }),
      RadioListTile(
          title: const Text("Option 2"),
          value: 1,
          groupValue: _selectedValue,
          onChanged: (selected) => {
                setState(() {
                  _selectedValue = selected!;
                })
              })
    ]);
  }
}
