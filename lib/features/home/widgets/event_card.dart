import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/custom_img_network.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/home/data/events_model.dart';
import 'package:event_hub/features/home/widgets/date_and_save.dart';
import 'package:event_hub/features/home/widgets/profile_pics.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.model, this.onpressed});
  final EventsModel model;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: 270,
        height: 260,
        padding: EdgeInsets.all(10),

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.lightGrayColor.withValues(alpha: 0.2),
              blurRadius: 10,
              offset: Offset(0, 8),
            ),
          ],
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: CustomImgNetwork(
                    imgurl: model.imgurl,
                    h: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                DateAndSave(day: model.day, mon: model.mon),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              model.eventTitle,
              style: TextStyles.subTitle1.copyWith(
                color: AppColors.headLineColor,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            Row(
              children: [
                const ProfilePics(),
                const SizedBox(width: 6),
                Text(
                  "+20 Going",
                  style: TextStyles.title3Eventhub.copyWith(
                    color: AppColors.deepPurple,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPic(img: AppAssets.mapSvg, color: AppColors.lightGrayColor),
                Text(
                  model.address,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.title3Eventhub.copyWith(
                    color: AppColors.lightGrayColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
