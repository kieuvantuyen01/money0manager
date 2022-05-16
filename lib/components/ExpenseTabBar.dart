import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/components/Transaction.dart';
import 'package:money_manager/components/TransactionContentWidget.dart';
import 'package:money_manager/main.dart';
import 'package:provider/provider.dart';
import 'ButtonPrimary.dart';
import 'DatePicker1.dart';
import 'DateRangePicker.dart';
import 'TitleText1.dart';

class ExpenseTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5, // length of tabs
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: TabBar(
                labelColor: Color.fromARGB(255, 35, 111, 87),
                labelStyle: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.black,
                indicatorWeight: 2.2,
                indicatorColor: Color.fromARGB(255, 35, 111, 87),
                padding: EdgeInsets.only(top: 10),
                indicatorPadding:
                    EdgeInsets.only(left: 25.0, bottom: 5.0, right: 0.0),
                labelPadding: EdgeInsets.only(left: 23.0),
                isScrollable: true,
                tabs: [
                  Tab(text: 'Ngày'),
                  Tab(text: 'Tuần'),
                  Tab(text: 'Tháng'),
                  Tab(text: 'Năm'),
                  Tab(text: 'Khoảng thời gian'),
                ],
              ),
            ),
            Container(
              height: 400, //height of TabBarView
              decoration: BoxDecoration(),
              child: TabBarView(children: <Widget>[
                TransactionsWidget(
                  dateTimeRange:
                      DateTimeRange(start: DateTime.now(), end: DateTime.now()),
                  tab: TAB.DATE,
                ),
                Center(
                    child: TitleText1(
                        text: 'Tab 2',
                        fontFamily: 'Inter',
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        r: 0,
                        g: 0,
                        b: 0)),
                Center(
                    child: TitleText1(
                        text: 'Tab 3',
                        fontFamily: 'Inter',
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        r: 0,
                        g: 0,
                        b: 0)),
                Center(
                    child: TitleText1(
                        text: 'Tab 4',
                        fontFamily: 'Inter',
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        r: 0,
                        g: 0,
                        b: 0)),
                TransactionsWidget(tab: TAB.RANGE),
                // Center(
                //   child: Column(
                //     children: <Widget>[
                //       DateRangePicker(),
                //       TitleText1(
                //           text: 'Tổng cộng: 2,000,000 đ',
                //           fontFamily: 'Inter',
                //           fontSize: 15,
                //           fontWeight: FontWeight.bold,
                //           r: 0,
                //           g: 0,
                //           b: 0),
                //     ],
                //   ),
                // ),
              ]),
            ),
          ]),
    );
  }
}

enum TAB { DATE, WEEK, MONTH, YEAR, RANGE }

class TransactionsWidget extends StatefulWidget {
  DateTimeRange? dateTimeRange;
  final tab;

  TransactionsWidget({this.dateTimeRange, required this.tab});

  @override
  _TransactionsState createState() {
    if (dateTimeRange == null) {
      dateTimeRange = DateTimeRange(
          start: DateTime(DateTime.now().year, DateTime.now().month, 1),
          end: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day));
    }
    return _TransactionsState(dateTimeRange: this.dateTimeRange!, tab: tab);
  }
}

class _TransactionsState extends State<TransactionsWidget> {
  DateTimeRange dateTimeRange;
  final tab;
  int _amount = 0;

  _TransactionsState({required this.dateTimeRange,required this.tab});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (dateTimeRange == null) {
      selectRange();
    }
  }

  void _setDateTimeRange(DateTimeRange dateTimeRange) {
    setState(() {
      this.dateTimeRange = dateTimeRange;
    });
  }

  void _setAmount(int amount) {
    setState(() {
      _amount = amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          dateTimeRangeWidget(tab),
          TitleText1(
              text: 'Tổng cộng: ${_amount} VNĐ',
              fontFamily: 'Inter',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              r: 0,
              g: 0,
              b: 0),
          Expanded(
              child: ChangeNotifierProvider(
            create: (context) => ApplicationState(),
            builder: (context, _) =>
                Consumer<ApplicationState>(builder: (context, appState, _) {
              return StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('userData/${appState.user!.uid}/transactions')
                    .where('isExpense', isEqualTo: true)
                    .where('date',
                        isGreaterThanOrEqualTo: DateTime(
                            dateTimeRange.start.year,
                            dateTimeRange.start.month,
                            dateTimeRange.start.day))
                    .where('date',
                        isLessThanOrEqualTo: DateTime(dateTimeRange.end.year,
                            dateTimeRange.end.month, dateTimeRange.end.day))
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text("Loading");
                  }
                  int amount = 0;
                  for (DocumentSnapshot document in snapshot.data!.docs) {
                    amount += document['value'] as int;
                  }
                  _amount = amount;

                  return ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      return TransactionContentWidget(
                          transaction: TransactionDetails(
                        categoryID: document['categoryID'],
                        accountID: document['accountID'],
                        isExpense: true,
                        currencyunit: document['currencyunit'],
                        value: document['value'],
                        date: document['date'],
                        description: document['description'],
                      ));
                    }).toList(),
                  );
                },
              );
            }),
          ))
        ],
      ),
    );
  }

  Widget dateTimeRangeWidget(TAB tab) {
    DateTime start = DateTime(dateTimeRange.start.year,
        dateTimeRange.start.month, dateTimeRange.start.day);
    DateTime end = DateTime(dateTimeRange.end.year, dateTimeRange.end.month,
        dateTimeRange.end.day);
    DateTime now =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    switch (tab) {
      case TAB.DATE:
        Future<Function?> onPress() async {
          final newDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(DateTime.now().year - 1),
            lastDate: DateTime(
                DateTime.now().year, DateTime.now().month, DateTime.now().day),
            builder: (context, child) => Theme(
              data: ThemeData.light().copyWith(
                colorScheme: ColorScheme.light(
                    primary: Color.fromARGB(255, 35, 111, 87)),
              ),
              child: child as Widget,
            ),
          );
          if (newDate != null) {
            _setDateTimeRange(DateTimeRange(start: newDate, end: newDate));
          }
        }
        if (start.year == now.year) {
          if (start.isAtSameMomentAs(now)) {
            return TextButton(
                onPressed: onPress,
                child: Text('Hôm nay, ${start.day} tháng ${start.month}'));
          } else if (start
              .isAtSameMomentAs(now.subtract(const Duration(days: 1)))) {
            return TextButton(
                onPressed: onPress,
                child: Text('Hôm qua, ${start.day} tháng ${start.month}'));
          } else {
            return TextButton(
                onPressed: onPress,
                child: Text('${start.day} tháng ${start.month}'));
          }
        } else {
          return TextButton(
              onPressed: onPress,
              child: Text('${start.day} tháng ${start.month}, ${start.year}'));
        }
        break;
      // case TAB.WEEK:
      //   Future<Function?> onPress() async {
      //     final newDate = await showDateRangePicker(
      //       context: context,
      //       initialDateRange: ,
      //       firstDate: DateTime(DateTime.now().year - 1),
      //       lastDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
      //       builder: (context, child) => Theme(
      //         data: ThemeData.light().copyWith(
      //           colorScheme: ColorScheme.light(primary: Color.fromARGB(255, 35, 111, 87)),
      //         ),
      //         child: child as Widget,
      //       ),
      //     );
      //     if (newDate!= null){
      //       _setDateTimeRange(DateTimeRange(start: newDate, end: newDate));
      //     }
      //   }
      //   if (start.year == now.year){
      //     if (start.isAtSameMomentAs(now)){
      //       return TextButton(onPressed: onPress, child: Text('Hôm nay, ${start.day} tháng ${start.month}'));
      //     } else if (start.isAtSameMomentAs(now.subtract(const Duration(days: 1)))){
      //       return TextButton(onPressed: onPress, child: Text('Hôm qua, ${start.day} tháng ${start.month}'));
      //     } else {
      //       return TextButton(onPressed: onPress, child: Text('${start.day} tháng ${start.month}'));
      //     }
      //   } else {
      //     return TextButton(onPressed: onPress, child: Text('${start.day} tháng ${start.month}, ${start.year}'));
      //   }
      case TAB.RANGE:
        if (start.year == end.year) {
          return TextButton(
              onPressed: selectRange,
              child: Text(
                  'từ ${start.day}/${start.month} đến ${end.day}/${end.month}/${end.year}'));
        } else {
          return TextButton(
              onPressed: selectRange,
              child: Text(
                  'từ ${start.day}/${start.month}/${start.year} đến ${end.day}/${end.month}/${end.year}'));
        }
      default:
        return Text('ADU');
    }
  }

  Future<Function?> selectRange() async {
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 20),
      lastDate: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day),
      initialDateRange: DateTimeRange(
          start: DateTime(DateTime.now().year, DateTime.now().month, 1),
          end: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day)),
      builder: (context, child) => Theme(
        data: ThemeData.light().copyWith(
          colorScheme:
              ColorScheme.light(primary: Color.fromARGB(255, 35, 111, 87)),
        ),
        child: child as Widget,
      ),
    );
    if (newDateRange != null) {
      _setDateTimeRange(
          DateTimeRange(start: newDateRange.start, end: newDateRange.end));
    }
  }
}
