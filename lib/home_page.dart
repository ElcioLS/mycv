import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final primaryColor = Colors.black;
  final backgroundColor = const Color(0xFFEDF1F4);

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: backgroundColor,
          ),
        ),
      ),
    );
  }
}
