import 'pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'pages/walkthrough.dart';

void main() {
  // runApp(DevicePreview(builder: (context) => MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Walkthrough();
  }
}
