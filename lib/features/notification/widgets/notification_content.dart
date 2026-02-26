import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class NotificationContent extends StatelessWidget {
  const NotificationContent({
    super.key,
    required this.name,
    required this.text1,
    required this.text2,
    required this.image,
    required this.time,
  });
  final String name;
  final String text1;
  final String text2;
  final String image;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(backgroundImage: AssetImage(image)),
        SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyles.body3.copyWith(fontWeight: FontWeight.w500),
                ),
                Text(
                  ' $text1',
                  style: TextStyles.body3.copyWith(color: AppColors.paragraph),
                ),
              ],
            ),
            Text(
              text2,
              style: TextStyles.body3.copyWith(color: AppColors.paragraph),
            ),
          ],
        ),
        Spacer(),
        Text(
          time,
          style: TextStyles.subTitle2.copyWith(color: AppColors.subColor),
        ),
      ],
    );
  }
}
