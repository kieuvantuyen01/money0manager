import 'package:flutter/material.dart';
import '../components/SmallHeader.dart';
import '../components/InputText1.dart';
import '../components/ButtonPrimary.dart';

class CreateReminder extends StatelessWidget {
  CreateReminder({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SmallHeader(title: 'Nhắc nhở', icon: Icon(Icons.menu)),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 60),
            child: InputText1(hintText: 'Chủ đề thư', labelText: '', maxLines: 1),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 20),
            child: InputText1(hintText: 'Địa chỉ email', labelText: '', maxLines: 1),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 20),
            child: InputText1(hintText: 'Nội dung thư', labelText: 'Ngày', maxLines: 1),
          ),
          Padding(
            padding: EdgeInsets.only(top: 90),
            child: SizedBox (
              width: 93,
              height: 51,
              child: ButtonPrimary(text: 'Gửi', r: 35, g: 111, b: 87, radius: 30, weight: 343, height: 51,),
            ),
          ),
        ],
      ),
    );
  }
}