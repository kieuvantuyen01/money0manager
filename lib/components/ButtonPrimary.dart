import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import '../screens/Reminder.dart';
import 'TitleText1.dart';
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc

class ButtonPrimary extends StatelessWidget {
  ButtonPrimary(
      {Key? key,
<<<<<<< HEAD
        required this.text,
        required this.r,
        required this.g,
        required this.b,
        required this.radius,
        required this.weight,
        required this.height})
=======
      required this.text,
      required this.r,
      required this.g,
      required this.b,
      required this.radius,
      required this.weight,
      required this.height,
        required this.screenName})
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
      : super(key: key);

  String text;
  int r, g, b;
  double radius;
  double height, weight;
<<<<<<< HEAD
=======
  String screenName;
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: this.weight,
      height: this.height,
      child: RaisedButton(
        onPressed: () {
<<<<<<< HEAD
          print('Raise button');
        },
        child: Text(
          this.text,
          style:
          TextStyle(fontFamily: 'Inter', fontSize: 18, color: Colors.white),
        ),
=======
          if (this.screenName == 'CreateReminder') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Reminder(title: 'Nhắc nhở')));
          }
        },
        child: TitleText1(text: this.text, fontFamily: 'Inter', fontSize: 18, fontWeight: FontWeight.bold, r: 255, g: 255, b: 255),
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(this.radius)),
        ),
        color: Color.fromARGB(255, this.r, this.g, this.b),
      ),
    );
  }
}