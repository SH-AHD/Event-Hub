import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
    required this.text,
    this.backGroundColor = AppColors.whiteColor,
    this.textColor = AppColors.whiteColor,
  });
  final String text;
  final Color backGroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 24),
        backgroundColor: backGroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      onPressed: () {},
      child: Text(text, style: TextStyles.body3.copyWith(color: textColor)),
    );
  }
}
