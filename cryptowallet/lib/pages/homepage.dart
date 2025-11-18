import 'package:cryptowallet/pages/trendspage.dart';
import 'package:flutter/material.dart';
import 'package:cryptowallet/extensions/extension.dart';
import 'package:cryptowallet/components/component.dart';
import 'package:cryptowallet/models/model.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        titleSpacing: 0,
        centerTitle: false,
        leadingWidth: 70,
        leading: Image.asset(
          "assets/images/avatar_image.png",
          width: 70,
          height: 70,
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Alex Rutuynos",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff393c45),
              ),
              child: const Icon(Icons.notifications_none_outlined),
            ),
          ),
        ],
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 0,
            children: [
              SizedBox(height: context.hp(2)),
              Container(
                height: context.hp(20),
                padding: const EdgeInsets.all(0),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.fast,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: balanceCard.length,
                  itemBuilder: (context, index) => BCard(
                    coinName: balanceCard[index]["name"],
                    iconSrc: Image.asset(
                      balanceCard[index]["iconsrc"],
                      width: 38,
                      height: 38,
                    ),
                    bgSrc: Image.asset(
                      balanceCard[index]["bgicon"],
                      width: 100,
                      height: 100,
                    ),
                    coinPercent: balanceCard[index]["percent"],
                    coinPrice: balanceCard[index]["Price"],
                    coinAbbrv: balanceCard[index]["abbrv"],
                  ),
                ),
              ),
              SizedBox(height: context.hp(2)),
              StickyHeader(
                header: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Portfolio",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: context.hp(4)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Column(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Wallet Balance",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "\$62,533",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  dropdownColor: const Color(0xff23262f),
                                  value: selectedCurrency,
                                  items: currency.map((String value) {
                                    return DropdownMenuItem(
                                      alignment: Alignment.topCenter,
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedCurrency = newValue;
                                    });
                                  },
                                  icon: const Padding(
                                    padding: EdgeInsets.only(bottom: 20.0),
                                    child: Icon(Icons.expand_more_rounded),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(48),
                                  color: Colors.lightGreen,
                                ),
                                child: const Row(
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
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: context.hp(2)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xff393c45),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const HexaIcon(
                                hintText: "Deposit",
                                bgsize: 50,
                                child: Icon(
                                  Iconsax.arrow_down,
                                  color: Color(0x88ffa131),
                                  size: 35,
                                ),
                              ),
                              const VerticalDivider(
                                indent: 20,
                                endIndent: 20,
                                thickness: 1,
                                color: Colors.white24,
                              ),
                              const HexaIcon(
                                hintText: "Withdraw",
                                bgsize: 50,
                                child: Icon(
                                  Iconsax.arrow_up_3,
                                  color: Color(0x88ffa131),
                                  size: 35,
                                ),
                              ),
                              const VerticalDivider(
                                indent: 20,
                                endIndent: 20,
                                thickness: 1,
                                color: Colors.white24,
                              ),
                              HexaIcon(
                                onTap: () => _scrollBottomSheet(context),
                                hintText: "Swap",
                                bgsize: 50,
                                child: const Icon(
                                  Iconsax.arrow_swap,
                                  color: Color(0x88ffa131),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: context.hp(2)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Market Trend",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            child: const Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Text(
                                "See All",
                                style: TextStyle(
                                  color: Color(0xffffa131),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TrendsPage(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: context.hp(1)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: context.hp(40),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          // physics: ClampingScrollPhysics(),
                          itemCount: marketTrends.length,
                          itemBuilder: (context, index) => MarketTrend(
                            image: Image.asset(
                              marketTrends[index]["icon"],
                              height: 45,
                              width: 45,
                            ),
                            title: marketTrends[index]["name"],
                            subtitle: marketTrends[index]["shorty"],
                            price: marketTrends[index]["price"],
                            percent: marketTrends[index]["percentage"],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _scrollBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: const Color(0xff23262f),
    useSafeArea: true,
    elevation: 1,
    isDismissible: true,
    isScrollControlled: true,
    enableDrag: true,
    showDragHandle: true,
    context: context,
    builder: (context) {
      return DraggableScrollableSheet(
        snap: true,
        initialChildSize: 0.6,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        builder: (context, scrollController) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SwapTile(
                coinName: "Bitcoin",
                iconSrc: Image.asset(
                  'assets/icons/bitcoinlogo.png',
                  width: 48,
                  height: 48,
                ),
                bgSrc: Image.asset(
                  'assets/icons/bitcoin_bg.png',
                  width: context.wp(50),
                  height: context.hp(20),
                ),
                coinPercent: 1.2,
                coinPrice: 2000,
                coinAbbrv: 'BTC',
              ),
              const SizedBox(height: 20),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
                child: Icon(Iconsax.arrow_swap),
              ),
              const SizedBox(height: 20),
              SwapTile(
                coinName: "Bitcoin",
                iconSrc: Image.asset(
                  'assets/icons/bnblogo.png',
                  width: 48,
                  height: 48,
                ),
                bgSrc: Image.asset(
                  'assets/icons/bnb_bg.png',
                  width: context.wp(50),
                  height: context.hp(20),
                ),
                coinPercent: 1.2,
                coinPrice: 2000,
                coinAbbrv: 'BTC',
              ),
            ],
          );
        },
      );
    },
  );
}
