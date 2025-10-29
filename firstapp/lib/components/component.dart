import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductBar extends StatelessWidget {
  const ProductBar({super.key});

  static TextStyle mystyle = TextStyle(
    color: Color(0xff747474),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color(0xfff4f4f4)),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xfffcfcfc),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: const Color(0xffe9e8ed),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                "assets/apple_watch.png",
                fit: BoxFit.cover,
                width: 48,
                height: 48,
              ),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("watch", style: mystyle),
                Text(
                  "Apple watch",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text("Color: Grey", style: mystyle),
              ],
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: Text(
                "\$1500.00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlockElement extends StatelessWidget {
  final String prefix;
  final String suffix;
  final TextStyle? prefixStyle = TextStyle(
    color: Color(0xff747474),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  final TextStyle? suffixStyle = TextStyle(
    color: Colors.black87,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  BlockElement({super.key, required this.prefix, required this.suffix});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(prefix, style: prefixStyle),
          Text(suffix, style: suffixStyle),
        ],
      ),
    );
  }
}

class SummaryBlock extends StatelessWidget {
  const SummaryBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color(0xfff4f4f4)),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xfffcfcfc),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order Summary",
              style: ProductBar.mystyle.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.left,
            ),
            Divider(),
            BlockElement(prefix: "Order Id", suffix: "1532446466423"),
            BlockElement(
              prefix: "Shipping Address",
              suffix: "145 Onye's house",
            ),
            BlockElement(prefix: "Tracking Id", suffix: "1532446466423"),
            BlockElement(
              prefix: "Estimated Delivery Date",
              suffix: "11/03/25; 04:54pm",
            ),
          ],
        ),
      ),
    );
  }
}
