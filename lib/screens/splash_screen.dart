import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:survey_pilkada_cianjur/screens/home_screen.dart';
import 'package:survey_pilkada_cianjur/screens/information_screen.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool? isSelected = false;

  void redirectToHomeScreen() {
    Timer(const Duration(seconds: 2), () async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      bool? showDisclaimer = sharedPreferences.getBool('showDisclaimer');

      if (showDisclaimer ?? true) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (stfContext, stfSetState) {
                return AlertDialog(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(defaultRadius),
                    ),
                  ),
                  title: Text(
                    'Disclaimer',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 20,
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aplikasi ini tidak mewakili atau berafiliasi dengan entitas pemerintah manapun.',
                        style: primaryTextStyle,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: primaryColor,
                            value: isSelected,
                            onChanged: (value) {
                              stfSetState(() {
                                isSelected = value;
                              });
                            },
                          ),
                          Text(
                            'Jangan tampilkan lagi',
                            style: primaryTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (isSelected == true) {
                              sharedPreferences.setBool(
                                  'showDisclaimer', false);
                            }
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                              (Route route) => false,
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              lightGreyColor,
                            ),
                          ),
                          child: Text(
                            'Lewati',
                            style: primaryTextStyle,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const InformationScreen(),
                                ),
                                (route) => false);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              primaryColor,
                            ),
                          ),
                          child: Text(
                            'Lanjutkan',
                            style: whiteTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
        );
      } else {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (Route route) => false,
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    redirectToHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DefaultTextStyle(
                  style: whiteTextStyle,
                  child: Text(
                    'www.dittmptrr27.com',
                    style: whiteTextStyle.copyWith(fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/vote-icon.png',
                  width: 100,
                ),
                const SizedBox(
                  height: 32,
                ),
                DefaultTextStyle(
                  style: whiteTextStyle.copyWith(fontSize: 18),
                  child: Text(
                    'Survey Pilkada Kab. Cianjur 2024',
                    style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                DefaultTextStyle(
                  style: whiteTextStyle.copyWith(fontSize: 12),
                  child: Text(
                    'APK version 1.0.0',
                    style: whiteTextStyle,
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
