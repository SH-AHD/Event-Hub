import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';

class EmptyNotificationScreen extends StatelessWidget {
  const EmptyNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPic(img: AppAssets.noNotificationIconSvg),
            Text(
              "No Notifications!",
              style: TextStyles.h5EventHub.copyWith(
                color: AppColors.headLineColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Here you'll see updates from people you follow, your followers' interactions, and the latest alerts for events you're interested in.",
              textAlign: TextAlign.center,
              style: TextStyles.title2Eventhub16.copyWith(
                color: AppColors.grayColor,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
