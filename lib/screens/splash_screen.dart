import 'dart:async';

import 'package:flutter/material.dart';
import 'package:survey_pilkada_cianjur/screens/home_screen.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void redirectToHomeScreen() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
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
