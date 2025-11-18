import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'components/component.dart';
import 'components/loginpage.dart';

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          foregroundColor: Color(0xff181617),
          backgroundColor: Color(0xfffaf8f9),
        ),
        scaffoldBackgroundColor: Color(0xfffaf8f9),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          foregroundColor: Color(0xffffffff),
          backgroundColor: Color(0xff181617),
        ),
        scaffoldBackgroundColor: Color(0xff181617),
      ),

      themeMode: ThemeMode.system,
      home: PageOne(size: size),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * .1),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/delivery_guy.png",
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "Order Status \n",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.3,
                        ),
                        children: [
                          TextSpan(
                            text: "Your package is on the way",
                            style: TextStyle(
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              letterSpacing: 1.3,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    ProductBar(),
                    SizedBox(height: 20),
                    SummaryBlock(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          alignment: Alignment.center,
                          // width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Track Order",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Your order is confirmed and in transit",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
