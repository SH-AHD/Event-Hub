import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 250, child: Image.asset(img, fit: BoxFit.cover)),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(27.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: AppColors.whiteColor),
              ),
            ),
            Text(
              "Event Details",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 70),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.whiteColor.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppAssets.bookmark1Svg),
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
