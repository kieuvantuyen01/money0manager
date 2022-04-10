<<<<<<< HEAD
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:money_manager/components/TitleText1.dart';
=======
import 'package:flutter/material.dart';
import 'package:money_manager/screens/CreateReminder.dart';
import 'TitleText1.dart';

>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc

class CreateButton extends StatelessWidget {
  final String title;
  final Icon icon;

  const CreateButton({Key? key, required this.title, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Row(
      children: <Widget> [
        Padding(
          padding: EdgeInsets.only(left: 0, top: 0),
          child: icon,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 0),
          child: TitleText1(text: 'TẠO', fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.bold, r: 0, g: 0, b: 0),
        )
      ]
=======
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateReminder(title: 'Tạo lời nhắc')));
      },
      child: Row(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.only(left: 0, top: 0),
            child: icon,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0),
            child: TitleText1(text: 'TẠO', fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.bold, r: 0, g: 0, b: 0),
          )
        ]
      ),
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
    );
  }

}