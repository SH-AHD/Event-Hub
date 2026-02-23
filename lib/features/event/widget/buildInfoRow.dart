import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildInfoRow(String assetPath, String title, String subtitle) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.buttonArrowBackground.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: SvgPicture.asset(assetPath, width: 25, height: 25),
      ),
      const SizedBox(width: 15),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(color: AppColors.grayColor, fontSize: 13),
            ),
          ],
        ),
      ),
    ],
  );
}
