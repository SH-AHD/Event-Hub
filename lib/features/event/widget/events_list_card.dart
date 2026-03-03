import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/features/event/screen/event_screen.dart';
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
              decoration: BoxDecoration(color: AppColors.whiteColor,
                
                //  BoxShadow(color: AppColors.shadowColor, offset: Offset.zero)
              ),
              height: 100,
              
              child: InkWell(
                onTap: () => pushPage(context: context, newScreen: EventScreen()),
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
                            style: TextStyles.subTitle3.copyWith(
                              color: AppColors.primaryColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            event.name ?? '',
                            style: TextStyles.title3Eventhub.copyWith(
                              color: AppColors.titleColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                width: 14,
                                height: 14,
                                AppAssets.locationevSvg,
                                // ignore: deprecated_member_use
                                color: AppColors.subColor,
                              ),
                              SizedBox(width: 6),
                              Text(
                                event.location ?? '',
                                style: TextStyles.subTitle3.copyWith(
                                  color: AppColors.subColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 15);
          },
          itemCount: events.length,
        ),
      ),
    );
  }
}
