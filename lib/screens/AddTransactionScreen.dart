import 'package:flutter/material.dart';
import '../components/ExpenseTabBar.dart';
import '../components/InComeTabBar.dart';
import '../components/PopUpNotification1.dart';
import '../components/SearchItem.dart';
import '../components/TitleText1.dart';
import 'BudgetScreen.dart';

class AddTransactionScreen extends StatelessWidget {
  AddTransactionScreen({Key? key, required this.title, required this.index}) : super(key: key);
  final String title;
  final int index;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return PopUpNotification1();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: index,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 5, top: 10),
              iconSize: 30,
              icon: Icon(Icons.search),
              tooltip: 'Tìm kiếm',
              onPressed: () => {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                )
              },
            ),
            IconButton(
              padding: EdgeInsets.only(right: 20, top: 10),
              iconSize: 30,
              icon: Icon(Icons.download),
              tooltip: 'Tải xuống',
              onPressed: () => {
                _showDialog(context),
              },
            ),
          ],
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
                child: Text('Chi phí',
                  style: Theme.of(context).textTheme.headline6!.apply(color: Colors.white),),
              ),
              Tab(
                  child: Text('Thu nhập',
                    style: Theme.of(context).textTheme.headline6!.apply(color: Colors.white),)
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ExpenseTabBar(),
            ),
            Center(
              child: InComeTabBar(),
            ),
          ],
        ),
      ),
    );
  }
}
