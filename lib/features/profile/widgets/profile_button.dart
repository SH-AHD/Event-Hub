import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.text,
    required this.assetSvg,
    this.backgroundColor = Colors.white,
    required this.onpress,
    this.radius = 10,
  });
  final String text;
  final String assetSvg;
  final Color backgroundColor;
  final Function onpress;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(radius),
        ),
        backgroundColor: backgroundColor,
        side: BorderSide(color: AppColors.primaryColor),
      ),
      onPressed: () {
        onpress.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPic(img: assetSvg),
          SizedBox(width: 16),
          Text(
            text,
            style: TextStyles.mainBody.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
