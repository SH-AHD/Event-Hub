import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Artist extends StatelessWidget {
  const Artist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: GestureDetector(
        onTap: () {
          print("Image tapped");
        },
        child: Container(
          width: 52,
          height: 52,
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: ClipOval(
              child: Container(
                color: AppColors.lightGrayColor,
                child: SvgPicture.asset(AppAssets.artistSvg, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
      title: const Text(
        "Marwan Pablo",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: const Text(
        "Artist",
        style: TextStyle(color: AppColors.grayColor, fontSize: 13),
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
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
