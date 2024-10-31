import 'dart:developer';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  void loginUser() {
    log('username: ${usernameController.text}', name: 'usernameController');
    log('password: ${passwordController.text}', name: 'usernameController');
    log('login successful!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                ),
                Text(
                  'Welcome back! \n You\'ve been missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.blueGrey),
                ),
                Image.network(
                  'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                  height: 200,
                ),

                //TODO: Add Username & Password text fields

                TextField(
                  controller: usernameController,
                  // onChanged: (value) {
                  //   //takes value parameter
                  //   print('value: $value');
                  // },
                  decoration: InputDecoration(
                    hintText: 'Add your username',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Add your password',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),

                ElevatedButton(
                    onPressed: loginUser,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    //todo: Navigate to browser
                    print('Link clicked!');
                  },
                  child: Column(
                    children: [
                      Text('Find us on'),
                      Text('https://poojabhaumik.com'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
