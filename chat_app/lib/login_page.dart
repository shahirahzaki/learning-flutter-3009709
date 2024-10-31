import 'dart:developer';

import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void loginUser() {
    log('login successful!', name: 'elevatedButton log');
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Let\'s sign you in!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'Welcome back! \n You\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              Image.network(
                'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                height: 200,
              ),
              ElevatedButton(
                  onPressed: loginUser,
                  child: Text(
                    'Click me!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  )),
              //TODO: Add the supporting text by final design
              InkWell(
                splashColor: ColorSelection.deepPurple.color,
                onDoubleTap: () {
                  log('Link double tapped', name: 'gestureDetector log');
                },
                onLongPress: () {
                  log('Link long pressed', name: 'gestureDetector log');
                },
                onTap: () {
                  // has onTap property which takes a callback function
                  //navigate to browser
                  log('Link tapped', name: 'gestureDetector log');
                },
                child: Column(
                  children: [
                    Text(
                      'Find us on',
                    ),
                    Text(
                      'https://poojabhaumik.com',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
