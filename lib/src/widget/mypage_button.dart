import 'package:flutter/material.dart';

class MyPageButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  const MyPageButton({super.key, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: const Color(0xfff3f3f3)),
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
