import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/event/widget/event_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EventDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(img: 'assets/images/concert.png'),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "International Band Music Concert",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 20),
                  _buildEventInfo(
                    icon: SvgPicture.asset(AppAssets.calendarevSvg),
                    title: "14 December, 2021",
                    subtitle: "Tuesday, 4:00PM - 9:00PM",
                  ),
                  _buildEventInfo(
                    icon: SvgPicture.asset(AppAssets.calendarevSvg),
                    title: "Gala Convention Center",
                    subtitle: "36 Guild Street London, UK",
                  ),
                  _buildEventInfo(
                    icon: SvgPicture.asset(AppAssets.calendarevSvg),
                    title: "Gala Convention Center",
                    subtitle: "36 Guild Street London, UK",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventInfo({
    required Widget icon,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: icon,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(subtitle, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}

class BuyTicketButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: const Text(
          "Buy Ticket 120\$",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
