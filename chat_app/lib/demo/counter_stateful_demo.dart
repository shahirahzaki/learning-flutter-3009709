//TODO: Recreate the counter app

// import 'dart:math' as math;
import 'dart:developer';

import 'package:flutter/material.dart';

class CounterStatefulDemo extends StatefulWidget {
  const CounterStatefulDemo({Key? key}) : super(key: key);

  @override
  State<CounterStatefulDemo> createState() => _CounterStatefulDemoState();
  // {
  //   State<CounterStatefulDemo> stateClassAssociatedWithThisWidget =
  //       _CounterStatefulDemoState();
  //   return stateClassAssociatedWithThisWidget;
  // }
}

class _CounterStatefulDemoState extends State<CounterStatefulDemo> {
  int counter = 0;

  void incrementCounter() {
    // this is called increment method
    setState(() {
      counter++;
      // log('number of count: $counter');
    });
    log('Counter: $counter', name: 'CounterStatefulDemo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
