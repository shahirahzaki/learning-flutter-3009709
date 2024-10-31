import 'dart:developer';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ThemeMode themeMode = ThemeMode.system;

  void loginUser() {
    log(
      'Clicked',
      name: 'ElevatedButton',
    );
  }

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Let\'s sign you in!',
                style: TextStyle(
                  fontSize: 30,
                  color:
                      // themeMode == ThemeMode.dark ? Colors.black : Colors.white,
                      isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                'Welcome back! \n You\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  log(
                    'Clicked',
                    name: 'TextButton',
                  );
                },
                child: Text(
                  'https://shirazaki.com',
                ),
              ),

              //TODO: Add Login Button

              //TODO: Add URL Text Button
            ],
          ),
        ),
      ),
    );
  }
}
