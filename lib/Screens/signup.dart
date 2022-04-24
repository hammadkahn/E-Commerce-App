import 'package:e_commerce/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class signUp extends StatelessWidget {
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
                  'assets/images/signup.png',
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
                      height: MediaQuery.of(context).size.height / 1.9,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Create account',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF000000))),
                            const Text('Quickly create account',
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
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(top: 19, bottom: 18),
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
                                    padding: const EdgeInsets.only(left: 28),
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
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 19, bottom: 18),
                                    isDense: true,
                                    // fillColor: Colors.white,
                                    // filled: true,
                                    border: InputBorder.none,
                                    hintText: 'Phone number',
                                    hintStyle: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins-Medium',
                                        color: Color(0xFF868889)),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.only(left: 28),
                                      child: Image.asset(
                                        'assets/images/phone.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                    prefix: SizedBox(width: 21),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 19, bottom: 18),
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
                                      padding: const EdgeInsets.only(left: 28),
                                      child: Image.asset(
                                        'assets/images/pass.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                    prefix: SizedBox(width: 21),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(right: 28),
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
                              padding: const EdgeInsets.only(top: 17),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                },
                                child: Center(
                                    child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
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
                                    "Signup",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: "Poppins-SemiBold",
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Already have an account ? ',
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
                                              builder: (_) => Home()));
                                    },
                                    child: const Text(
                                      'Login',
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
}
