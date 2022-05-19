import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'TitleText1.dart';

class PlusButton extends StatelessWidget {
  PlusButton(
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: 64.w,
      height: 44.h,
      child: RaisedButton(
        onPressed: () {},
        child: TitleText1(text: '+', fontFamily: 'Inter', fontSize: 25.sp, fontWeight: FontWeight.bold, r: 255, g: 255, b: 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.r)),
        ),
        color: Color.fromARGB(255, 35, 111, 87),
      ),
    );
  }
}