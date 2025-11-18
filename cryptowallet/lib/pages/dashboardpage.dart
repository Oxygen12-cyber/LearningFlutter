import 'package:cryptowallet/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:cryptowallet/components/component.dart';
import 'package:cryptowallet/models/model.dart';
import 'package:sticky_headers/sticky_headers.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // String? selectedCurrency = "USD";
  // List<String> currency = ["USD", "AED", "NGN", "YEN"];
  int _selectedIndex = 0;

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
        title: Row(
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
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff393c45),
              ),
              child: Icon(Icons.notifications_none_outlined),
            ),
          ),
        ],
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 0,
            children: [
              SizedBox(height: context.hp(2)),
              Container(
                height: context.hp(20),
                padding: EdgeInsets.all(0),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(
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
                header: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                          Column(
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
                                  dropdownColor: Color(0xff23262f),
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
                                  icon: Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 20.0,
                                    ),
                                    child: Icon(Icons.expand_more_rounded),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(48),
                                  color: Colors.lightGreen,
                                ),
                                child: Row(
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
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff393c45),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HexaIcon(
                                hintText: "Analytics",
                                bgsize: 55,
                                child: Image.asset(
                                  "assets/icons/line_chart.png",
                                  width: 48,
                                  height: 48,
                                  color: Color(0x88ffa131),
                                ),
                              ),
                              VerticalDivider(
                                indent: 20,
                                endIndent: 20,
                                thickness: 1,
                                color: Colors.white24,
                              ),
                              HexaIcon(
                                hintText: "Withdraw",
                                bgsize: 55,
                                child: Icon(
                                  Icons.arrow_upward_rounded,
                                  color: Color(0x88ffa131),
                                  size: 35,
                                ),
                              ),
                              VerticalDivider(
                                indent: 20,
                                endIndent: 20,
                                thickness: 1,
                                color: Colors.white24,
                              ),
                              HexaIcon(
                                hintText: "Deposit",
                                bgsize: 55,
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Color(0x88ffa131),
                                  size: 35,
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
                      child: Text(
                        "Market Trend",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: context.hp(40),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Color(0xff393c45),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(48),
            topRight: Radius.circular(48),
          ),
        ),
        child: BottomNavigationBar(
          enableFeedback: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: (index) => setState(() => _selectedIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Profile',
            ),
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
