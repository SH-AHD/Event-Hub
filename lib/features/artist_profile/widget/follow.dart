import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({super.key});

  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool isFollowed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        setState(() {
          isFollowed = !isFollowed;
        });
      },
      icon: isFollowed
          ? const Icon(Icons.check, color: AppColors.whiteColor)
          : SvgPicture.asset(AppAssets.followvSvg),
      label: Text(
        isFollowed ? "Followed" : "Follow",
        style: const TextStyle(fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: isFollowed
            ? AppColors.subColor
            : AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
