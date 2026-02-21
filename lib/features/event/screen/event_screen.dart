import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/event/widget/event_top.dart';
import 'package:event_hub/features/event/widget/going.dart';
import 'package:event_hub/features/event/widget/ll.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: BuyTicketButton(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBar(img: AppAssets.eventimg),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "International Band Music Concert",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildEventInfo(
                        icon: Icons.calendar_today_rounded,
                        title: "14 December, 2021",
                        subtitle: "Tuesday, 4:00PM - 9:00PM",
                      ),
                      _buildEventInfo(
                        icon: Icons.location_on_rounded,
                        title: "Gala Convention Center",
                        subtitle: "36 Guild Street London, UK",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(top: 210, left: 20, right: 20, child: InviteCard()),
        ],
      ),
    );
  }

  Widget _buildEventInfo({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primaryColor),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.grayColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
