import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // var
  int _counter = 0;

  // method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // UI

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
