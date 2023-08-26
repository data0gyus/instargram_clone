import 'package:flutter/material.dart';

class LoginButtom extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  const LoginButtom({super.key, this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: child,
      ),
    );
  }
}
