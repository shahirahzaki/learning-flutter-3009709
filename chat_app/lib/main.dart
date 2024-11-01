import 'package:chat_app/chat_page.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context)
        .platformBrightness; //retrieve platform brightness
    final bool isDarkMode = brightness == Brightness.dark;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      theme: isDarkMode
          ? ThemeData(
              colorSchemeSeed: ColorSelection.deepPurple.color,
              useMaterial3: true,
              brightness: Brightness.dark,
            )
          : ThemeData(
              colorSchemeSeed: ColorSelection.deepPurple.color,
              useMaterial3: true,
              brightness: Brightness.light,
            ),
      home: LoginPage(),
    );
  }
}
