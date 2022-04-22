import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';

class homes extends StatelessWidget {
  const homes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthh = MediaQuery.of(context).size.width - 34;
    double heightt = widthh * 283 / 380;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: widthh,
        height: heightt,
        color: Colors.black,
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
