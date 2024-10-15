import 'package:flutter/material.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';

class SnackbarCustom {
  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: dangerLightColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: dangerColor, width: 1),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        content: Text(
          message,
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
            color: dangerColor,
          ),
        ),
      ),
    );
  }

  static void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: successLightColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: successColor, width: 1),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        content: Text(
          message,
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
