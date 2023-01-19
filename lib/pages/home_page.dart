import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final int days = 30;
  final String name = "Madan Gopal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Madan's App"),
      ),
      body: Center(
          child: Container(
        child: Text("Welcome to $days days of flutter by $name"),
      )),
      drawer: Drawer(),
    );
  }
}
