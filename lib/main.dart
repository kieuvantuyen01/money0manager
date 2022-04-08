import 'package:flutter/material.dart';
import 'package:money_manager/components/Category.dart';
import 'package:money_manager/screens/Currency.dart';
import 'screens/ContactScreen.dart';
import 'screens/Reminder.dart';
import 'helpers/ChangeLanguage.dart';
import 'screens/CategoryScreen.dart';
import 'screens/CreateReminder.dart';
import 'screens/ExchangeMoney.dart';
import 'screens/Account.dart';
import 'screens/ColumnChart.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Manager',
      localizationsDelegates: [
        CustomLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('vi', ''),
      ],
      home: Reminder(title: 'title'),
    );
  }
}