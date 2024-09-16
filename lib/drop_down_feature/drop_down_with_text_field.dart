import 'package:flutter/material.dart';

class DropDownWithTextField extends StatefulWidget {
  const DropDownWithTextField({super.key});

  @override
  State<DropDownWithTextField> createState() => _DropDownWithTextFieldState();
}

class _DropDownWithTextFieldState extends State<DropDownWithTextField> {
  List<String> dropDownList = ["pens", "scale", "pencils"];
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _controller,
        decoration: InputDecoration(
            suffixIcon: PopupMenuButton<String>(
              icon: const Icon(Icons.arrow_drop_down),
              onSelected: (String value) {
                _controller.text = value;
              }, position: PopupMenuPosition.under,
              itemBuilder: (BuildContext context) {
                return dropDownList.map<PopupMenuItem<String>>((String value) {
                  return PopupMenuItem(
                      value: value,
                      child: Text(value));
                }).toList();
              },
            )
        )
    );
  }
}