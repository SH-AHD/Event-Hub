import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/event/widget/event_top.dart';
import 'package:event_hub/features/event/widget/going.dart';
import 'package:event_hub/features/event/widget/buyticketbutton.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: BuyTicketButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBar(img: AppAssets.eventimg),
            Transform.translate(
              offset: const Offset(0, -30),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: const InviteCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
