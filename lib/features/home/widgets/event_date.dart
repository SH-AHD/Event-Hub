import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class EventDate extends StatelessWidget {
  const EventDate({
    super.key,required this.day, required this.mon,
  });
final String day;
final String mon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.whiteColor.withValues(alpha: 0.6),
      
        ),
        child: Align(
          alignment: AlignmentGeometry.center,
          child: Column(
            children: [
              Text(day, 
              textAlign: TextAlign.center,
              style: TextStyles.body2.copyWith(color: AppColors.lightRedColor, fontWeight: FontWeight.bold),),
            
               Text(mon, 
              textAlign: TextAlign.center,
              style: TextStyles.body3.copyWith(color: AppColors.lightRedColor,fontWeight: FontWeight.w500),),
            ],
          )),
      ),
    );
  }
}
