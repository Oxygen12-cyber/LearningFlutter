import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Walkthrough extends StatelessWidget {
  const Walkthrough({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        extendBodyBehindAppBar: true,
        body: Stack(
          fit: StackFit.passthrough,
          children: [
            BaseBg(),
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 0),
                    Image(
                      image: AssetImage("lib/assets/image/smiley.png"),
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
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

class BaseBg extends StatelessWidget {
  const BaseBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xff1a1b30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Pinance",
                style: GoogleFonts.poppins(
                  color: Color(0xfffac536),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Trusted by millions of users\n worldwide",
                style: GoogleFonts.poppins(
                  color: Color(0xfffac536),
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  wordSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              CircularProgressIndicator(color: Color(0xfffac536)),
              SizedBox(height: 250),
            ],
          ),
        ),
      ),
    );
  }
}
