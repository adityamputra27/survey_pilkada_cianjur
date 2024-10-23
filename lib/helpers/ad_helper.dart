import 'dart:io';
import 'package:flutter/foundation.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (kDebugMode) {
      if (Platform.isAndroid) {
        return 'ca-app-pub-3940256099942544/6300978111';
      } else if (Platform.isIOS) {
        return 'ca-app-pub-3940256099942544/2934735716';
      } else {
        throw new UnsupportedError('Unsupported platform');
      }
    } else {
      if (Platform.isAndroid) {
        return 'ca-app-pub-8018841107474033/4700714875';
      } else if (Platform.isIOS) {
        return 'ca-app-pub-3940256099942544/2934735716';
      } else {
        throw new UnsupportedError('Unsupported platform');
      }
    }
  }

  static String get interstitialAdUnitId {
    if (kDebugMode) {
      if (Platform.isAndroid) {
        return "ca-app-pub-3940256099942544/1033173712";
      } else if (Platform.isIOS) {
        return "ca-app-pub-3940256099942544/4411468910";
      } else {
        throw new UnsupportedError("Unsupported platform");
      }
    } else {
      if (Platform.isAndroid) {
        return "ca-app-pub-8018841107474033/7498166971";
      } else if (Platform.isIOS) {
        return "ca-app-pub-3940256099942544/4411468910";
      } else {
        throw new UnsupportedError("Unsupported platform");
      }
    }
  }

  static String get rewardedAdUnitId {
    if (kDebugMode) {
      if (Platform.isAndroid) {
        return "ca-app-pub-3940256099942544/5224354917";
      } else if (Platform.isIOS) {
        return "ca-app-pub-3940256099942544/1712485313";
      } else {
        throw new UnsupportedError("Unsupported platform");
      }
    } else {
      if (Platform.isAndroid) {
        return "ca-app-pub-3940256099942544/5224354917";
      } else if (Platform.isIOS) {
        return "ca-app-pub-3940256099942544/1712485313";
      } else {
        throw new UnsupportedError("Unsupported platform");
      }
    }
  }
}
