import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';

class AddEventFloatingButton extends StatelessWidget {
  const AddEventFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: AppColors.primaryColor,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onPressed: () {},
      child:   SvgPic(img: AppAssets.addSvg),
    );
  }
}
