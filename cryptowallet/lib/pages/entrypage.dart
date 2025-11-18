import 'package:cryptowallet/pages/chatpage.dart';
import 'package:cryptowallet/pages/homepage.dart';
import 'package:cryptowallet/pages/profilepage.dart';
import 'package:cryptowallet/pages/walletpage.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  int _selectedIndex = 0;
  final List<Widget> _appPages = [
    const HomePage(),
    const WalletPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _appPages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          color: Color(0xff393c45),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(48),
            topRight: Radius.circular(48),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(48),
            topRight: Radius.circular(48),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            enableFeedback: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: 'Home',
                tooltip: "home",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Iconsax.wallet_1),
                label: 'Wallet',
                tooltip: "wallet",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Iconsax.message),
                label: 'Chats',
                tooltip: "chats",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Iconsax.profile_2user),
                label: 'Profile',
                tooltip: "profile",
              ),
              // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
