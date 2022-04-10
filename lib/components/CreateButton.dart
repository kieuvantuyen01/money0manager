import 'package:flutter/material.dart';
import 'package:money_manager/screens/CreateReminder.dart';
import 'TitleText1.dart';

class CreateButton extends StatelessWidget {
  final String title;
  final Icon icon;

  const CreateButton({Key? key, required this.title, required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CreateReminder(title: 'Tạo lời nhắc')));
      },
      child: Row(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 0, top: 0),
          child: icon,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 0),
          child: TitleText1(
              text: 'TẠO',
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              r: 0,
              g: 0,
              b: 0),
        )
      ]),
    );
  }
}
