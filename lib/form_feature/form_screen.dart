import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Registration"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FormTextFiled(
              controller: _nameController,
              labelText: "name",
              keyboardType: TextInputType.text,
              imeAction: TextInputAction.next,
            ),
            FormTextFiled(
              controller: _phoneNumberController,
              labelText: "phone number",
              keyboardType: TextInputType.number,
              imeAction: TextInputAction.next,
            ),
            FormTextFiled(
                controller: _emailIdController,
                labelText: "email",
                keyboardType: TextInputType.emailAddress,
                imeAction: TextInputAction.next),
            FormTextFiled(
              controller: _passwordController,
              labelText: "password",
              keyboardType: TextInputType.text,
              imeAction: TextInputAction.done,
              isPassword: true,
            ),
            const Text("Password filed with eye icon"),
            const LoginForm()
          ],
        ),
      ),
    );
  }
}

class FormTextFiled extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final TextInputAction imeAction;
  final bool isPassword;

  const FormTextFiled(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.keyboardType,
      required this.imeAction,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(12),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            label: Text(labelText,
                style: const TextStyle(color: Colors.lightBlue)),
            border: const OutlineInputBorder(),
          ),
          keyboardType: keyboardType,
          textInputAction: imeAction,
          obscureText: isPassword,
          obscuringCharacter: '*',
        ));
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(12),
        child: TextField(
          obscureText: _isHidden,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Password',
            labelStyle: const TextStyle(color: Colors.lightBlue),
            suffixIcon: InkWell(
              onTap: _togglePasswordView,
              child: Icon(
                _isHidden ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
          ),
        ));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
