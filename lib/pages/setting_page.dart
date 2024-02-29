import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Engage"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text("Setting Page"),
      ),
    );
  }
}