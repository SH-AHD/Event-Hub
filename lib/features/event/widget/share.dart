import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class share extends StatelessWidget {
  const share({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        SharePlus.instance.share(ShareParams(text: 'Link'));
      },
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: AppColors.buttonArrowBackground.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      child: const Text(
        "Share",
        style: TextStyle(color: AppColors.primaryColor),
      ),
    );
  }
}
