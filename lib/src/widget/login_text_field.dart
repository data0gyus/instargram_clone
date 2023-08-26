import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  const LoginTextField({super.key, this.controller, this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(width: 1, color: Colors.black)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(width: 1, color: Color(0xff7d7d7d))),
        border: InputBorder.none,
      ),
    );
  }
}
