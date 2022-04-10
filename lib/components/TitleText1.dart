import 'package:flutter/material.dart';

class TitleText1 extends StatelessWidget {
  TitleText1(
      {Key? key,
<<<<<<< HEAD
        required this.text,
        required this.fontFamily,
        required this.fontSize,
        required this.fontWeight,
        required this.r,
        required this.g,
        required this.b})
=======
      required this.text,
      required this.fontFamily,
      required this.fontSize,
      required this.fontWeight,
      required this.r,
      required this.g,
      required this.b})
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
      : super(key: key);

  String text, fontFamily;
  double fontSize;
  FontWeight fontWeight;
  int r, g, b;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      this.text,
      style: TextStyle(
<<<<<<< HEAD
        fontFamily: this.fontFamily,
        fontSize: this.fontSize,
        fontWeight: this.fontWeight,
        color: Color.fromARGB(255, this.r, this.g, this.b),
=======
          fontFamily: this.fontFamily,
          fontSize: this.fontSize,
          fontWeight: this.fontWeight,
          color: Color.fromARGB(255, this.r, this.g, this.b),
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
      ),
    );
  }
}