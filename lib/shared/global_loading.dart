import 'package:flutter/material.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';

class GlobalLoading {
  static final GlobalLoading _instance = GlobalLoading._internal();

  factory GlobalLoading() {
    return _instance;
  }

  GlobalLoading._internal();

  OverlayEntry? _overlayEntry;

  void show(BuildContext context, bool? isText, String text) {
    if (_overlayEntry != null) return;

    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          const ModalBarrier(
            dismissible: false,
            color: Colors.black54,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: primaryColor,
                ),
                if (isText!)
                  const SizedBox(
                    height: 16,
                  ),
                if (isText)
                  Text(
                    text,
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                      decoration: TextDecoration.none,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
