import 'package:flutter/material.dart';
import 'component.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton.filled(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
          style: IconButton.styleFrom(
            elevation: 1,
            padding: EdgeInsets.all(12),
            backgroundColor:
                Theme.of(context).colorScheme.brightness == Brightness.dark
                ? Color(0xff414141)
                : Color(0xffffffff),
          ),
        ),
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          UIBlock(
            baby: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/profile.png",
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
                Text.rich(
                  TextSpan(
                    text: "Alfred Daniel\n",
                    style: TextStyle(
                      color: Theme.of(context).appBarTheme.foregroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "Product/UI Designer",
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).appBarTheme.foregroundColor!.withValues(alpha: 0.5),
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.chevron_right,
                    size: 32,
                    color: Theme.of(context).appBarTheme.foregroundColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Other Settings",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),

          UIBlock(
            baby: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIList(customIcon: Icons.person, uiTitle: "Profile details"),
                  Divider(),
                  UIList(customIcon: Icons.lock, uiTitle: "Password"),
                  Divider(),
                  UIList(
                    customIcon: Icons.notifications,
                    uiTitle: "Notifications",
                  ),
                  Divider(),
                  UIList(
                    customIcon: Icons.dark_mode,
                    uiTitle: "Dark Mode",
                    suffixIcon: Switch(
                      value: false,
                      onChanged: (bool value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          UIBlock(
            baby: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIList(customIcon: Icons.note, uiTitle: "Password"),
                  Divider(),
                  UIList(customIcon: Icons.chat, uiTitle: "Notifications"),
                  Divider(),
                  UIList(
                    color: Colors.red,
                    customIcon: Icons.delete,
                    uiTitle: "Dark Mode",
                    suffixIcon: Switch(
                      value: false,
                      onChanged: (bool value) {},
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
