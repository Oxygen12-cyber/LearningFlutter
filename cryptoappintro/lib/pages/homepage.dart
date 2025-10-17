import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: CurvedCut(),
                child: Container(
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  padding: EdgeInsets.all(0),
                  child: SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -150,
                          right: -250,
                          child: CircularContainer(),
                        ),
                        Positioned(
                          top: 100,
                          right: -300,
                          child: CircularContainer(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.padding = 0,
    this.child,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
  });

  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: const Color.fromARGB(255, 125, 186, 237).withValues(alpha: 0.3),
      ),
    );
  }
}

class CurvedCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      size.height + 30,
      size.width,
      size.height - 30,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
