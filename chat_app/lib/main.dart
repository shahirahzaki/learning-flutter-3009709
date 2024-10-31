import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(
        colorSchemeSeed: ColorSelection.deepPurple.color,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: ColorSelection.deepPurple.color,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      // theme: ThemeData(primarySwatch: Colors.yellow),
      home: LoginPage(),
    );
  }
}
