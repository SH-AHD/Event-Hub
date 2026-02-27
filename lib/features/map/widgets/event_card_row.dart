import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/custom_img_network.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/event/screen/event_screen.dart';
import 'package:event_hub/features/home/data/events_model.dart';
import 'package:flutter/material.dart';

class EventCardRow extends StatelessWidget {
  const EventCardRow({super.key, required this.model});
  final EventsModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          pushPage(context: context, newScreen: EventScreen());
      },
      child: Container(
        width: 340,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16), 
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha:  0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CustomImgNetwork(
               imgurl:  model.imgurl ?? '',
                w: 80,
                h: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(model.time ?? '', style: TextStyles.subTitle3.copyWith(color: AppColors.primaryColor)),
                    SvgPic(img: AppAssets.saveSvg,)
                    ],
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: Text(
                    
                          model.eventTitle ?? '',
                          style: TextStyles.title2Eventhub.copyWith(color: AppColors.titleColor, fontWeight: FontWeight.w600),
                        
                        ),
                  ),
                  Row(
                    children: [
                      SvgPic(img: AppAssets.locationevSvg, width: 10,color: AppColors.lightGrayColor,),
                     const SizedBox(width: 8,),
                      Text(
      
                        model.locationName ?? '',
                        style: TextStyles.subTitle3.copyWith(color: AppColors.grayColor),
                       
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}