import 'package:flutter/material.dart';
import 'package:flutter_instargram_clone/src/widget/image_data.dart';
import 'package:flutter_instargram_clone/src/widget/login_buttom.dart';
import 'package:flutter_instargram_clone/src/widget/login_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(150),
                colors: [
              Color(0xfff5dfd5),
              Color(0xffd5e1f5),
              Color(0xffd5f5e2),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _top(),
            _body(),
            _bottom(),
          ],
        ),
      )),
    );
  }

  Widget _top() {
    return Expanded(
      flex: 2,
      child: Center(
          child: ImageData(
        path: ImagePath.icon,
        width: 200,
      )),
    );
  }

  Widget _body() {
    return const Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: LoginTextField(
              label: 'Phone number, username or email',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: LoginTextField(
              label: 'Password',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: LoginButtom(
                child: Text(
              'Log in',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    );
  }

  Widget _bottom() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 150,
        ));
  }
}
