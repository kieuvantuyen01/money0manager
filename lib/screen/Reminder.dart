import 'package:flutter/material.dart';
import 'package:money_manager/components/SmallHeader.dart';
import 'package:money_manager/components/TitleText1.dart';

import '../components/CreateButton.dart';

class Reminder extends StatelessWidget {
  Reminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SmallHeader(title: 'Nhắc nhở', icon: Icon(Icons.menu)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 40),
              child: CreateButton(title: 'TẠO', icon: Icon(Icons.add))),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: TitleText1(
                text: 'Trả tiền nhà',
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                r: 0,
                g: 0,
                b: 0),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: TitleText1(
                text: 'Đóng tiền điện nước',
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                r: 0,
                g: 0,
                b: 0),
          ),
        ],
      ),
    );
  }
}
