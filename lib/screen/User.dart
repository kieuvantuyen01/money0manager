import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;

  const UserPage({Key? key, required this.name, required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 35, 111, 87),
          title: Text(name),
          centerTitle: true,
        ),
        body: Image.asset(urlImage),
      );
}
