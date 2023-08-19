import 'package:flutter/material.dart';

class MyPageInfo extends StatelessWidget {
  final int cnt;
  final String label;
  const MyPageInfo({super.key, required this.cnt, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          cnt.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
