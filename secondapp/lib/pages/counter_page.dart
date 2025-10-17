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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[400],
          centerTitle: true,
          title: Text(
            "Welcome",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          leading: Icon(Icons.menu, color: Colors.white),
        ),
        body: Expanded(child: Container(color: Colors.deepPurple[200])),
      ),
    );
  }
}
