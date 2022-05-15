import 'package:flutter/material.dart';
import 'package:money_manager/screens/AddTransactionScreen.dart';
import '../components/ExpenseTabBar.dart';
import '../components/InComeTabBar.dart';
import '../components/PopUpNotification1.dart';
import '../components/SearchItem.dart';
import '../components/TitleText1.dart';
import 'HomeScreen.dart';

class ExchangeMoney extends StatelessWidget {
  ExchangeMoney({Key? key, required this.title}) : super(key: key);
  final String title;

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
      child: Builder(builder: (BuildContext context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(top: 10),
              child: TitleText1(
                  text: 'Giao dịch',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(title: 'Ngân sách'))),
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
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add), onPressed: (){
                int index = DefaultTabController.of(context)!.index;
                print(index);
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddTransactionScreen(title: title, index: index,)));
          }),
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
        );
      })
    );
  }
}
