import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/event/widget/event_details.dart';
import 'package:event_hub/features/event/widget/event_top.dart';
import 'package:event_hub/features/event/widget/going.dart';
import 'package:event_hub/features/event/widget/buy_ticket_button.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: BuyTicketButton(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBar(img: AppAssets.eventimg),
                const SizedBox(height: 50),
                event_details(),
              ],
            ),
            Positioned(top: 220, left: 30, right: 30, child: InviteCard()),
          ],
        ),
      ),
    );
  }
}
