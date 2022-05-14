import 'package:flutter/material.dart';
import '../components/ButtonPrimary.dart';
import '../components/DatePicker1.dart';
import '../components/InputText1.dart';
import '../components/TitleText1.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';

class AddTransactionScreen1 extends StatefulWidget {
  @override
  AddTransactionScreen1State createState() => AddTransactionScreen1State();
}

class AddTransactionScreen1State extends State<AddTransactionScreen1> {
  static String money = '0';

  Widget DateBar() {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: DatePicker(
        DateTime.now(),
        height: 71,
        width: 75,
        initialSelectedDate: DateTime.now(),
        selectionColor: Color.fromARGB(255, 35, 111, 87),
        selectedTextColor: Colors.white,
        dateTextStyle: TextStyle(
          fontSize: 13,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 37, 49, 65),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: TitleText1(
                text: 'Thêm giao dịch',
                fontFamily: 'Inter',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                r: 255,
                g: 255,
                b: 255),
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          elevation: 0.0,
          leading: IconButton(
            padding: EdgeInsets.only(left: 32, top: 10),
            iconSize: 30,
            icon: Icon(Icons.arrow_back_sharp),
            tooltip: 'Menu',
            onPressed: () => {Scaffold.of(context).openDrawer()},
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 35, 111, 87),
                  Color.fromARGB(255, 35, 111, 87),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            indicatorPadding:
                EdgeInsets.only(left: 50.0, right: 50.0, bottom: 2.0),
            padding: EdgeInsets.only(bottom: 20.0),
            tabs: [
              Tab(
                child: TitleText1(
                    text: 'Chi phí',
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    r: 255,
                    g: 255,
                    b: 255),
              ),
              Tab(
                child: TitleText1(
                    text: 'Thu nhập',
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    r: 255,
                    g: 255,
                    b: 255),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 180,
                        height: 100,
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 16, right: 16, top: 20),
                          child: InputText1(
                              hintText: money, labelText: '', maxLines: 1),
                        ),
                      ),
                      TitleText1(
                          text: 'đ',
                          fontFamily: 'Inter',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          r: 35,
                          g: 111,
                          b: 87)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 5),
                    child: TitleText1(
                        text: 'Tài khoản',
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        r: 102,
                        g: 102,
                        b: 102),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 10),
                    child: TitleText1(
                        text: 'Chưa chọn',
                        fontFamily: 'Inter',
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                        r: 35,
                        g: 111,
                        b: 87),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 25),
                    child: TitleText1(
                        text: 'Danh mục',
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        r: 102,
                        g: 102,
                        b: 102),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: DateBar(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 10),
                    child: TitleText1(
                        text: 'Ghi chú',
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        r: 102,
                        g: 102,
                        b: 102),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 5),
                    child: InputText1(
                        hintText: 'Ghi chú', labelText: '', maxLines: 1),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 25),
                    child: TitleText1(
                        text: 'Ảnh',
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        r: 102,
                        g: 102,
                        b: 102),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, right: 16, top: 20, bottom: 20),
                        child: ButtonPrimary(
                            text: '+',
                            r: 156,
                            g: 172,
                            b: 171,
                            radius: 5,
                            weight: 80,
                            height: 80,
                            screenName: 'ContactScreen',
                            fontSize: 50),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, right: 16, top: 20, bottom: 20),
                        child: ButtonPrimary(
                            text: '+',
                            r: 156,
                            g: 172,
                            b: 171,
                            radius: 5,
                            weight: 80,
                            height: 80,
                            screenName: 'ContactScreen',
                            fontSize: 50),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 60),
                  child: InputText1(
                      hintText: 'Chủ đề thư', labelText: 'Chủ đề', maxLines: 1),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 60),
                  child: InputText1(
                      hintText: 'Địa chỉ email',
                      labelText: 'Email',
                      maxLines: 1),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 5),
                  child: TitleText1(
                      text: 'Thư trả lời sẽ được gửi đến địa chỉ email này',
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      r: 0,
                      g: 0,
                      b: 0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 60),
                  child: InputText1(
                      hintText: 'Nội dung thư',
                      labelText: 'Nội dung',
                      maxLines: 2),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 5),
                  child: TitleText1(
                      text: 'Thư trả lời sẽ được gửi đến địa chỉ email này',
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      r: 0,
                      g: 0,
                      b: 0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
