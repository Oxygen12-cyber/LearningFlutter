import 'package:flutter/material.dart';
import 'package:cryptowallet/models/model.dart';
import 'package:cryptowallet/components/component.dart';

class SaveCode extends StatelessWidget {
  const SaveCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: balanceCard.length,
        itemBuilder: (context, index) => BCard(
          coinName: balanceCard[index]["name"],
          iconSrc: Image.asset(
            balanceCard[index]["iconsrc"],
            width: 48,
            height: 48,
          ),
          bgSrc: Image.asset(
            balanceCard[index]["bgicon"],
            width: 200,
            height: 200,
          ),
          coinPercent: balanceCard[index]["percent"],
          coinPrice: balanceCard[index]["Price"],
          coinAbbrv: balanceCard[index]["abbrv"],
        ),
      ),
    );
  }
}
