import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'pages/counter_page.dart';

void main(List<String> args) {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}
