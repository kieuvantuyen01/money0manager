import 'package:flutter/material.dart';
import 'package:left_pane/components/TitleText1.dart';
import '../components/SmallHeader.dart';
import '../components/InputText1.dart';
import '../components/ButtonPrimary.dart';

class Contact extends StatelessWidget {
  Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SmallHeader(title: 'Nhắc nhở', icon: Icon(Icons.menu)),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 60),
            child:
                InputText1(hintText: 'Chủ đề thư', labelText: '', maxLines: 1),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 20),
            child: InputText1(
                hintText: 'Địa chỉ email', labelText: '', maxLines: 1),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 5),
            child: TitleText1(
                text: 'Thư trả lời sẽ được gửi đến địa chỉ email này',
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                r: 0,
                g: 0,
                b: 0),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 20),
            child: InputText1(
                hintText: 'Nội dung thư', labelText: '', maxLines: 1),
          ),
          Padding(
            padding: EdgeInsets.only(top: 90),
            child: SizedBox(
              width: 93,
              height: 51,
              child: ButtonPrimary(
                text: 'Gửi',
                r: 35,
                g: 111,
                b: 87,
                radius: 30,
                weight: 343,
                height: 51,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
