import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  Color buttonColor;

  CounterStateful({
    Key? key,
    required this.buttonColor,
  }) : super(key: key);

  @override
  State<CounterStateful> createState() {
    State<CounterStateful> stateClassAssociatedWithThisWidget =
        _CounterStatefulState();
    return stateClassAssociatedWithThisWidget;
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;
  // Color buttonColor = Colors.blue;

  void increment() {
    if (mounted) {
      setState(() {
        counter++;
      });
      print(counter);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          elevation: 4.0,
        ),
        floatingActionButton: FloatingActionButton(
          //TODO: Provide color from parent
          backgroundColor: widget.buttonColor,
          child: Icon(Icons.add),
          onPressed: () {
            increment();
          },
        ),
        body: Center(
          child: Text(
            '$counter',
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
