import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/features/event/widget/build_Info_Row.dart';
import 'package:event_hub/features/event/widget/event_info.dart';
import 'package:event_hub/features/event/widget/share.dart';
import 'package:flutter/material.dart';

class event_details extends StatelessWidget {
  const event_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleEvent(title: "Marwan Pablo - Egyption Rapper"),
          const SizedBox(height: 20),

          buildInfoRow(
            AppAssets.calendarevSvg,
            "14 December, 2021",
            "Tuesday, 4:00PM - 9:00PM",
          ),

          const SizedBox(height: 20),
          buildInfoRow(
            AppAssets.locationevSvg,
            "Gala Convention Center",
            "36 Guild Street London, UK ",
          ),

          const SizedBox(height: 20),
          artistInfo(artistName: "Marwan Pablo"),
          const SizedBox(height: 20),
          const Text(
            "About Event",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          AboutEvent(
            content:
                "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available...",
          ),
          const SizedBox(height: 10),
          share(),
        ],
      ),
    );
  }
}
