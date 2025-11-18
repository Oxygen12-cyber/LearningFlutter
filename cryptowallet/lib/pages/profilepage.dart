import 'package:cryptowallet/components/component.dart';
import 'package:cryptowallet/extensions/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cryptowallet/theme/theme.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  // finalbool _themeswitchvalue = false;

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Account",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.4,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/avatar_image.png",
                      width: 300,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      bottom: 60,
                      right: 60,
                      child: Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: const Icon(
                          Iconsax.camera,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Alex Rutuynos",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Alexrutuynos@gmail.com",
                style: GoogleFonts.poppins(
                  color: Colors.white54,
                  letterSpacing: 1.5,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ClistTile(
                  title: "Profile",
                  subTitle: "your profile details",
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.edit, color: Color(0xffffa131)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ClistTile(
                  title: 'Transactions',
                  subTitle: 'transactions history',
                  suffix: Icon(Iconsax.arrow_right_3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClistTile(
                  title: "App Theme",
                  subTitle: 'lightmode or darkmode?',
                  suffix: CupertinoSwitch(
                    activeTrackColor: const Color(0xffffa131),
                    inactiveTrackColor: const Color(0xff23262f),
                    value: Provider.of<themeSwitch>(context).isdark,
                    onChanged: (newValue) {
                      themeSwitch().isdark = newValue;
                      Provider.of<themeSwitch>(
                        context,
                        listen: false,
                      ).toggleTheme();
                    },
                  ),
                ),
              ),

              SizedBox(height: context.hp(4)),
            ],
          ),
        ),
      ),
    );
  }
}
