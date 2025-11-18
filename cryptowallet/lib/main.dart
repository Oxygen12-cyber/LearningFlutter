// import 'package:cryptowallet/models/model.dart';
import 'package:cryptowallet/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:provider/provider.dart';
import 'pages/signuppage.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => themeSwitch(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeswitch = Provider.of<themeSwitch>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lighttheme,
      darkTheme: darktheme,
      themeMode: themeswitch.currentTheme,
      home: const SignUpPage(),
    );
  }
}
