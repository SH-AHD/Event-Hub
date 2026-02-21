import 'package:event_hub/features/Home/widgets/event_date.dart';
import 'package:event_hub/features/Home/widgets/save_button.dart';
import 'package:flutter/material.dart';

class DateAndSave extends StatelessWidget {
  const DateAndSave({
    super.key,
    required this.day, required this.mon,
  });
final String day;
final String mon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        EventDate(day: day,mon: mon,),
         SaveButton(),
      ],
    );
  }
}
