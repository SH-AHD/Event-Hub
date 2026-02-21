import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/event/widget/event_top.dart';
import 'package:event_hub/features/event/widget/going.dart';
import 'package:event_hub/features/event/widget/buyticketbutton.dart';
import 'package:event_hub/features/event/widget/buildInfoRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Marwan Pablo Concert - Egyptian Rapper",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.buttonArrowBackground,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ClipOval(
                              child: Container(
                                color: AppColors.lightGrayColor,
                                child: SvgPicture.asset(
                                  AppAssets.artistSvg,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: const Text(
                          "Marwan Pablo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: const Text(
                          "Artist",
                          style: TextStyle(
                            color: AppColors.grayColor,
                            fontSize: 13,
                          ),
                        ),
                        trailing: SizedBox(
                          height: 35,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.buttonArrowBackground
                                  .withOpacity(0.1)
                                  .withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Follow",
                              style: TextStyle(color: Color(0xFF5669FF)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "About Event",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available...",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.grayColor,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
