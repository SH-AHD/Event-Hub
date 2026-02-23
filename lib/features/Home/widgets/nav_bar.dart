import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/map/map_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.iconsColor,
      items: [
        BottomNavigationBarItem(
          label: "Explore",
          icon: SvgPic(img: AppAssets.exploreSvg),
        ),
    
        BottomNavigationBarItem(
          label: "Events",
          icon: GestureDetector(
            onTap: () {
              // pushPage(context: context, newScreen: EventsScreen());
            },
            child: SvgPic(
              img: AppAssets.eventSvg,
              color: AppColors.iconsColor,
            ),
          ),
        ),
        BottomNavigationBarItem(label: "", icon: Text("")),
    
        BottomNavigationBarItem(
          label: "Map",
          icon: GestureDetector(
            onTap: () {
              pushPage(context: context, newScreen: MapScreen());
            },
            child: SvgPic(img: AppAssets.mapSvg, color: AppColors.iconsColor),
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: GestureDetector(
            onTap: () {
              // pushPage(context: context, newScreen: ProfileScreen());
            },
            child: SvgPic(
              img: AppAssets.profileSvg,
              color: AppColors.iconsColor,
            ),
          ),
        ),
      ],
    );
  }
}
