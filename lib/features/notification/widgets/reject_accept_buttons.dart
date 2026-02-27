import 'package:event_hub/features/notification/widgets/notification_button.dart';
import 'package:flutter/material.dart';

class RejectAcceptButtons extends StatelessWidget {
  const RejectAcceptButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NotificationButton(text: 'Reject', textColor: Color(0xff706D6D)),
        SizedBox(width: 13),
        NotificationButton(text: 'Accept', backGroundColor: Color(0xff5669ffd)),
      ],
    );
  }
}
