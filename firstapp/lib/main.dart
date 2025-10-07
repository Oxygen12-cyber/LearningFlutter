import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[400],
          title: Title(
            color: Colors.white,
            child: Text(
              "New_App",
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
          ),
          leading: Icon(Icons.menu, color: Colors.white),
        ),
        body: Center(
          child: Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(1, 2),
                    blurRadius: 0.1,
                    spreadRadius: 0.8,
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),

                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
