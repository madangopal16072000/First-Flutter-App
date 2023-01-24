import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Madan Gopal";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Madan's App",
        ),
      ),
      body: Center(child: Text("Welcome to $days days of flutter by $name")),
      drawer: const MyDrawer(),
    );
  }
}
