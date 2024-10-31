import 'package:chat_app/chat_page.dart';
import 'package:chat_app/demo/counter_stateful_demo.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  ThemeMode themeMode = ThemeMode.system;
  // ColorSelection colorSelection = ColorSelection.yellow;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      themeMode: themeMode,
      theme: ThemeData(
        colorSchemeSeed: ColorSelection.yellow.color,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: ColorSelection.yellow.color,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      // theme: ThemeData(primarySwatch: Colors.yellow),
      home: CounterStateful(
        buttonColor: ColorSelection.orange.color,
      ),
    );
  }
}
