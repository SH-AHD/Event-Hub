import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/constants/app_network_imgs.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/home/widgets/drawer_tab.dart';
import 'package:flutter/material.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    super.key,
  }) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
    color: AppColors.whiteColor, 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        CircleAvatar(radius: 50, backgroundImage: NetworkImage(AppNetworkImgs.usrImg)),
        SizedBox(height: 20,),
        Text("Ashfak Sayem", style: TextStyle(color: AppColors.blackColor, fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 20,),
        DrawerTab( iconPath: AppAssets.userDSvg,title: "My Profile",),
        DrawerTab(iconPath: AppAssets.messageDSvg , title: "Message",),
        DrawerTab( iconPath: AppAssets.calendarSvg,title: "Calender",),
        DrawerTab( iconPath: AppAssets.bookmarkSvg,title: "Bookmark",),
        DrawerTab(iconPath: AppAssets.contactSvg ,title: "Contact Us",),
        DrawerTab(iconPath: AppAssets.settingSvg ,title: "Settings",),
        DrawerTab(iconPath: AppAssets.helpSvg ,title: "Helps & FAQs",),
        DrawerTab(iconPath: AppAssets.outSvg ,title: "Sign Out",),
    Spacer(),
    Container(
      width: 150,
      height: 46,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
        SvgPic(img: AppAssets.proSvg),
        SizedBox(width: 10,),
        Text("Upgrade Pro", style: TextStyles.title2Eventhub16.copyWith(color: AppColors.secondaryColor),),
          ],
        ),
      ),
    ),
      ],
    ),
          );
  }
}
