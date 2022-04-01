import 'package:flutter/material.dart';
import 'package:money_manager/components/Category.dart';
import 'screens/CategoryScreen.dart';
import 'screens/CreateReminder.dart';
import 'screens/ExchangeMoney.dart';
import 'screens/Account.dart';
import 'screens/ColumnChart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Manager',
      home: Account(title: 'title'),
    );
  }
}