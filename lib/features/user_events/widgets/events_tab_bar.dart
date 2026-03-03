import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class EventsTabBar extends StatefulWidget {
  EventsTabBar({super.key, required this.groupValue,required this.onSelect});
  int groupValue;
  final Function(int) onSelect;
  @override
  State<EventsTabBar> createState() => _EventsTabBarState();
}

class _EventsTabBarState extends State<EventsTabBar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: CustomSlidingSegmentedControl<int>(
        initialValue: widget.groupValue,
        children: {
          1: Text(
            'Upcoming Event',
            style: TextStyles.body2.copyWith(
              color: widget.groupValue == 1
                  ? AppColors.primaryColor
                  : AppColors.grayColor,
            ),
          ),
          2: Text(
            'PAST EVENTS',
            style: TextStyles.body2.copyWith(
              color: widget.groupValue == 2
                  ? AppColors.primaryColor
                  : AppColors.grayColor,
            ),
          ),
        },
        decoration: BoxDecoration(
          color: AppColors.lightGrayColor.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(20),
        ),
        thumbDecoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .3),
              blurRadius: 4,
              spreadRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInToLinear,
        onValueChanged: (v) {
        widget.  onSelect(v);
        },
      ),
    );
  }
}
