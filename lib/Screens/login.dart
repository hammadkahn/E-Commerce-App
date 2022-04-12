import 'dart:math';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/login.png',
            /* width: 100.0,
            height: 100.0, */
          ),
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.width / 2,
          )
        ],
      ),
    );
  }
}
