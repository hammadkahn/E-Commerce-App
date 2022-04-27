import 'dart:convert';

import 'package:e_commerce/Screens/home.dart';
import 'package:e_commerce/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:http/http.dart' as http;

import '../models/loginresponse.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  UserData? userData;
  bool isLoading = false;
  String? error;
  TextEditingController userCTRL = TextEditingController();

  TextEditingController passCTRL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
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
                        padding:
                            const EdgeInsets.only(top: 30, left: 16, right: 17),
                        child: !isLoading
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (error != null) Text("Error: $error"),
                                  if (userData == null) ...[
                                    const Text('Welcome back !',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF000000))),
                                    const Text('Sign in to your account',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins-Regular',
                                            color: Color(0xFF868889))),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.white),
                                      child: TextField(
                                        controller: userCTRL,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              top: 19, bottom: 18),
                                          isDense: true,
                                          // fillColor: Colors.white,
                                          // filled: true,
                                          border: InputBorder.none,
                                          hintText: 'Email Address',
                                          hintStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Poppins-Medium',
                                              color: Color(0xFF868889)),
                                          prefixIcon: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 28),
                                            child: Image.asset(
                                              'assets/images/email.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                          prefix: SizedBox(width: 21),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white),
                                        child: TextField(
                                          controller: passCTRL,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                top: 19, bottom: 18),
                                            isDense: true,
                                            // fillColor: Colors.white,
                                            // filled: true,
                                            border: InputBorder.none,
                                            hintText: 'Password',
                                            hintStyle: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Poppins-Medium',
                                                color: Color(0xFF868889)),
                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 28),
                                              child: Image.asset(
                                                'assets/images/pass.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                            ),
                                            prefix: SizedBox(width: 21),
                                            suffixIcon: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 28),
                                              child: Image.asset(
                                                'assets/images/eye.png',
                                                width: 26.48,
                                                height: 16.88,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 21, left: 10, right: 8),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4),
                                            child: FlutterSwitch(
                                              padding: 0,
                                              width: 28.57,
                                              height: 16,
                                              toggleSize: 13,
                                              switchBorder: Border.all(
                                                  width: 1.5,
                                                  color: Colors.white),
                                              toggleBorder: Border.all(
                                                  width: 1.5,
                                                  color: Colors.grey),
                                              inactiveColor: Colors.amber,
                                              value: true,
                                              onToggle: (val) => {},
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(left: 9.43),
                                            child: Text(
                                              "Remember me",
                                              style: TextStyle(
                                                  color: Color(0xFF868889),
                                                  fontFamily: "Poppins-Medium",
                                                  fontSize: 15),
                                            ),
                                          ),
                                          const Spacer(),
                                          const Text(
                                            "Forgot password",
                                            style: TextStyle(
                                                color: Color(0xFF407EC7),
                                                fontFamily: "Poppins-Medium",
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 17),
                                      child: Center(
                                          child: GestureDetector(
                                              onTap: () {
                                                login();

                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Home()));

                                                ;
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  //gradient
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFFAEDC81),
                                                      Color(0xFF6CC51D),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Login",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontFamily:
                                                          "Poppins-SemiBold",
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Don\'t have an account?',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins-Regular',
                                                color: Color(0xFF868889)),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) =>
                                                          signUp()));
                                            },
                                            child: const Text(
                                              'Sign up',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Poppins-Medium',
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ],
                              )
                            : Center(
                                child: CircularProgressIndicator(),
                              ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login() async {
    var url = Uri.parse('http://ishaqhassan.com:2000/user/signin');
    setState(() {
      isLoading = true;
    });
    try {
      var response = await http
          .post(url, body: {'email': userCTRL.text, 'password': passCTRL.text});
      var responseJson = Loginresponse.fromJson(jsonDecode(response.body));
      setState(() {
        userData = responseJson.data;
      });
    } catch (e) {
      setState(() {
        error = e.toString();
      });
    }
    setState(() {
      isLoading = false;
    });
  }
}
