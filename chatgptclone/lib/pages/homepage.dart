import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_rounded, color: Colors.black),
              ),
            ),
          ),
          title: Container(
            width: 140,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 220, 209, 241),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Icon(Icons.star, color: Colors.deepPurple),
                Text(
                  "Get Plus",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.5),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: Center(child: Text("Hello, Oxygen")),
        bottomNavigationBar: BottomNavigationBar(items: 
          
        ),
      ),
    );
  }
}
