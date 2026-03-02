import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/features/home/data/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsListCard extends StatelessWidget {
  const EventsListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.separated(
          itemBuilder: (context, index) {
            final event = events[index];
            return Container(
              height: 100,
              color: AppColors.whiteColor,
              child: Row(
                children: [
                  Image.asset(event.image ?? '', width: 79, height: 92),
                  SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          event.date ?? '',
                          style: TextStyles.subTitle2.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          event.name ?? '',
                          style: TextStyles.title1Eventhub.copyWith(
                            color: AppColors.titleColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AppAssets.locationevSvg,
                              color: AppColors.secondaryColor,
                            ),
                            SizedBox(width: 6,),
                            Text(event.location??'',style: TextStyles.subTitle1,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 8);
          },
          itemCount: events.length,
        ),
      ),
    );
  }
}
