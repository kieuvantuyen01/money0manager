import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_manager/main.dart';
import 'package:provider/provider.dart';
import '../components/BudgetTaskBar.dart';
import '../components/NavigationDrawerWidget.dart';
import '../components/TitleText1.dart';
import 'ExchangeMoney.dart';

class BudgetScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ApplicationState.getInstance,
      builder: (context, _) => Consumer<ApplicationState>(
          builder: (context, appState, _) => Scaffold(
                resizeToAvoidBottomInset: false,
                drawer: NavigationDrawerWidget(),
                // drawer: NavigationDrawerWidget(),
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Builder(
                              builder: (context) => Container(
                                child: IconButton(
                                  padding:
                                      EdgeInsets.only(left: 10.w, bottom: 10.h),
                                  iconSize: 30.sp,
                                  icon: Icon(Icons.menu),
                                  tooltip: 'Menu',
                                  onPressed: () =>
                                      {Scaffold.of(context).openDrawer()},
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 80.w, bottom: 10.h),
                              child: TitleText1(
                                  text: 'Ngân sách',
                                  fontFamily: 'Inter',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  r: 255,
                                  g: 255,
                                  b: 255),
                            ),
                            IconButton(
                              padding: EdgeInsets.only(left: 60.w, bottom: 10.h),
                              iconSize: 35.sp,
                              icon: Image.asset("assets/ngansach.png"),
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ExchangeMoney(title: 'Giao dich'))),
                              },
                            ),
                          ]),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 20.h),
                        child: TitleText1(
                            text: 'Hôm nay',
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            r: 198,
                            g: 198,
                            b: 198),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.w, top: 25.h),
                        child: TitleText1(
                            text: '–5,450,000 đ',
                            fontFamily: 'Inter',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            r: 255,
                            g: 255,
                            b: 255),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.w, top: 10.h),
                        child: TitleText1(
                            text: (appState.remainingAmount != null
                                ? 'Số dư khả dụng: ${appState.remainingAmount} VNĐ'
                                : 'SOS'),
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            r: 255,
                            g: 255,
                            b: 255),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.transparent,
                  toolbarHeight: 220.h,
                  elevation: 0.0,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.r),
                          bottomRight: Radius.circular(25.r)),
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
                ),
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    BudgetTaskBar(),
                  ],
                ),
              )),
    );
  }
}
