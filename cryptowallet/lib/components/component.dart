import 'package:cryptowallet/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BCard extends StatelessWidget {
  final Image iconSrc;
  final Image bgSrc;
  final String coinName;
  final double coinPercent;
  final double coinPrice;
  final String coinAbbrv;

  const BCard({
    super.key,
    required this.coinName,
    required this.iconSrc,
    required this.bgSrc,
    required this.coinPercent,
    required this.coinPrice,
    required this.coinAbbrv,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            width: context.hp(20),
            height: context.hp(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color(0xff393c45),
            ),
            child: Transform.rotate(angle: 0.5, child: bgSrc),
          ),
          Container(
            height: context.hp(20),
            width: context.hp(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iconSrc,
                const SizedBox(height: 5),
                Row(
                  spacing: 8,
                  children: [
                    Text(
                      coinName,
                      style: GoogleFonts.poppins(
                        color: Colors.white60,
                        fontSize: coinName.trim().length < 8 ? 20 : 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        color: coinPercent > 0
                            ? Colors.lightGreen
                            : Colors.orange,
                      ),
                      child: Text(
                        "${coinPercent.toString()}%",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "\$${coinPrice.toStringAsFixed(1)}",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),

                Text(
                  coinAbbrv,
                  style: GoogleFonts.poppins(
                    color: Colors.white30,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HexaIcon extends StatelessWidget {
  final double bgsize;
  final String hintText;
  final Widget child;
  final void Function()? onTap;

  const HexaIcon({
    super.key,
    required this.bgsize,
    required this.child,
    required this.hintText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color(0x55ffa131),
      splashFactory: InkRipple.splashFactory,
      onTap: onTap,
      child: SizedBox(
        // height: bgsize + 20,
        // width: bgsize + 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 0,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/icons/hexagon.png",
                  height: bgsize,
                  width: bgsize,
                ),
                Positioned(
                  left: 1,
                  right: 1,
                  top: 1,
                  bottom: 1,
                  child: Center(child: child),
                ),
              ],
            ),
            Text(
              hintText,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketTrend extends StatelessWidget {
  final Image image;
  final String title;
  final String subtitle;
  final double price;
  final double percent;

  const MarketTrend({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          image,
          SizedBox(width: context.wp(4)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  color: Colors.white60,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 5,
            children: [
              Text(
                price.toString(),
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    percent > 0 ? Icons.expand_less : Icons.expand_more,
                    color: percent > 0 ? Colors.green : Colors.red,
                  ),
                  Text(
                    "${percent.toString()}%",
                    style: GoogleFonts.poppins(
                      color: Colors.white60,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ClistTile extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Widget? suffix;
  final void Function()? onTap;

  const ClistTile({
    super.key,
    this.onTap,
    this.subTitle,
    this.suffix,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        tileColor: const Color(0xff393c45),
        contentPadding: const EdgeInsetsGeometry.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(32),
        ),
        title: Text(
          title,
          style: GoogleFonts.ubuntuSans(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: subTitle != null
            ? Text(
                subTitle!,
                style: GoogleFonts.ubuntuSans(
                  color: Colors.white38,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            : null,
        trailing: suffix,
        onTap: onTap,
      ),
    );
  }
}

class SwapTile extends StatelessWidget {
  final Image iconSrc;
  final Image bgSrc;
  final String coinName;
  final double coinPercent;
  final double coinPrice;
  final String coinAbbrv;
  final TextEditingController? controller;

  const SwapTile({
    super.key,
    required this.coinName,
    required this.iconSrc,
    required this.bgSrc,
    required this.coinPercent,
    required this.coinPrice,
    required this.coinAbbrv,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            width: context.wp(100),
            height: context.hp(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color(0xff393c45),
            ),
            child: Transform.rotate(angle: 0.5, child: bgSrc),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: context.hp(20),
              width: context.wp(100),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  iconSrc,
                  SizedBox(width: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton(
                          items: [DropdownMenuItem(child: Text("Bitcoin"))],
                          onChanged: (newValue) {},
                        ),
                      ),
                      Text(coinAbbrv),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: controller,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            prefixText: "\$",
                            prefixStyle: GoogleFonts.ubuntuSans(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 0,
                            ),
                            hintText: "amount",
                            hintStyle: GoogleFonts.ubuntuSans(
                              fontSize: 24,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.normal,
                              color: Colors.white38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: context.wp(20),
                      height: context.hp(4),
                      // padding: const EdgeInsets.symmetric(
                      //   horizontal: 20,
                      //   vertical: 4,
                      // ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        color: Colors.lightGreen,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 0,
                        children: [
                          Icon(Icons.expand_less_rounded),
                          Text(
                            '1.27 %',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
