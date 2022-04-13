import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/images/login.png',
              ),
              Positioned(
                  left: 17,
                  top: 68,
                  child: Image.asset('assets/images/back.png',
                      width: 23, height: 16)),
              const Positioned(
                top: 63,
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color(0xffFFFFFF)),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                      color: Color(0xffF4F5F9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 16),
                      child: Text('Welcome back !',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              color: Color(0xFF000000))),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
