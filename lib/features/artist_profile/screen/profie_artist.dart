import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/artist_profile/widget/massages.dart';
import 'package:event_hub/features/artist_profile/widget/about_event_reviews.dart';
import 'package:event_hub/features/artist_profile/widget/artist_details.dart';
import 'package:event_hub/features/artist_profile/widget/state_column.dart';
import 'package:flutter/material.dart';
import 'package:event_hub/features/artist_profile/widget/follow.dart';

class ProfieArtist extends StatefulWidget {
  const ProfieArtist({super.key});
  @override
  _ProfieArtistState createState() => _ProfieArtistState();
}

class _ProfieArtistState extends State<ProfieArtist> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.titleColor),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert, color: AppColors.titleColor),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            circleavatar(),
            const SizedBox(height: 15),
            artistname(),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildStatColumn("350", "Following"),
                line(),
                buildStatColumn("346", "Followers"),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(child: FollowButton()),
                  const SizedBox(width: 15),
                  massages(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TabBar(
              indicatorColor: AppColors.primaryColor,
              labelColor: AppColors.primaryColor,
              unselectedLabelColor: AppColors.grayColor,
              tabs: const [
                Tab(text: "ABOUT"),
                Tab(text: "EVENT"),
                Tab(text: "REVIEWS"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [aboutTab(), eventTab(), reviewsTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
