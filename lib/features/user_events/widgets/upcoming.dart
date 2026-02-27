import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPic(img: AppAssets.noEventsIconSvg),
         SizedBox(height: 30),
       Text(
      "No Upcoming Event..",
      style: TextStyles.h5EventHub.copyWith(
        color: AppColors.headLineColor,
      ),
    ),
    SizedBox(height: 20),
    Text(
     "There are no upcoming events at the moment. Explore and book your favorite events now!",  textAlign: TextAlign.center,
      style: TextStyles.title2Eventhub16.copyWith(
        color: AppColors.grayColor,
      ),
    ),
    
      ],
    );
  }
}
