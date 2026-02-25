import 'dart:ui';
import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileImageAndFollowSection extends StatelessWidget {
  const ProfileImageAndFollowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 48,
          backgroundImage: AssetImage(AppAssets.profileImage),
        ),
        SizedBox(height: 20),
        Text('Ashfak Sayem', style: TextStyles.h4EventHub),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('350', style: TextStyles.title2Eventhub),
                Text(
                  'Following',
                  style: TextStyles.body3.copyWith(color: Color(0xff747688)),
                ),
              ],
            ),
            SizedBox(width: 23),
            Image.asset(AppAssets.line),
            SizedBox(width: 23),
            Column(
              children: [
                Text('346', style: TextStyles.title2Eventhub),
                Text(
                  'Followers',
                  style: TextStyles.body3.copyWith(color: Color(0xff747688)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
