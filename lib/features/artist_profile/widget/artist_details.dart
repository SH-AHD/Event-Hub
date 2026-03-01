import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class circleavatar extends StatelessWidget {
  const circleavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: AppColors.lightGrayColor,
      child: ClipOval(
        child: SvgPicture.asset(AppAssets.artistSvg, fit: BoxFit.cover),
      ),
    );
  }
}

class artistname extends StatelessWidget {
  const artistname({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Marwan Pablo",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
