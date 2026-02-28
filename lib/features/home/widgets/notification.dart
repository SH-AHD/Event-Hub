import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/empty_notification/screen/empty_notification_screen.dart';
import 'package:event_hub/features/notification/pages/notification_screen.dart';
import 'package:flutter/material.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushPage(context: context, newScreen: NotificationScreen());
              // pushPage(context: context, newScreen: EmptyNotificationScreen());
      },
      child: CircleAvatar(
        backgroundColor: AppColors.borderColor.withValues(alpha: 0.1),
        child: Stack(
          children: [
            SvgPic(img: AppAssets.bellSvg, height: 22),
            Positioned(
              right: 2,
              top: 1,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: AppColors.deepCyan,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.headLineColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
