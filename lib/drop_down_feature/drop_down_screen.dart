import 'package:flutter/material.dart';

class DropDownScreen extends StatelessWidget {
  const DropDownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text("Drop Down"),
      ),
      body: const Center(
          child: Column(
        children: [],
      )),
    );
  }
}
