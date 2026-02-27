import 'dart:ui';

import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/profile/widgets/interest_container.dart';
import 'package:event_hub/features/profile/widgets/profile_button.dart';
import 'package:event_hub/features/profile/widgets/profile_image_and_follow_section.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text('Profile', style: TextStyles.h4EventHub),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 29),
              ProfileImageAndFollowSection(),
              SizedBox(height: 22),
              ProfileButton(
                assetSvg: AppAssets.editProfileSvg,
                text: 'Edit Profile',
                onpress: () {},
              ),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('About Me', style: TextStyles.title1Eventhub),
              ),
              SizedBox(height: 10),
              ReadMoreText(
                "Enjoy your favorite dish and a lovely your friends and family and have a great time Food from local food trucks will be available for purchase. "
                "Food from local food trucks will be available for purchase.",
                trimLength: 144,
                trimMode: TrimMode.Length,
                trimCollapsedText: ' Read More',
                trimExpandedText: ' Read Less',
                style: TextStyles.mainBody,
                moreStyle: TextStyles.mainBody.copyWith(
                  color: AppColors.primaryColor,
                ),
                lessStyle: TextStyles.mainBody.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('Interest', style: TextStyles.title1Eventhub),
                  Spacer(),
                  SizedBox(
                    height: 31,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        backgroundColor: Color(0xffEEF0FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(14),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPic(img: AppAssets.changeSvg),
                          SizedBox(width: 6),
                          Text(
                            'Change',
                            style: TextStyles.subTitle3.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InterestContainer(
                    color: AppColors.primaryColor,
                    text: 'Games Online',
                  ),
                  InterestContainer(color: AppColors.redColor, text: 'Concert'),
                  InterestContainer(
                    color: AppColors.orangeColor,
                    text: 'Music',
                  ),
                  InterestContainer(color: Color(0xff7D67EE), text: 'Art'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  InterestContainer(color: AppColors.greenColor, text: 'Movie'),
                  SizedBox(width: 9),
                  InterestContainer(color: AppColors.deepCyan, text: 'Others'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
