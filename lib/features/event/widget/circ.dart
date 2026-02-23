import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CirProfilePic1 extends StatelessWidget {
  const CirProfilePic1({super.key, required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.whiteColor, width: 1.5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: CircleAvatar(radius: 16, backgroundImage: NetworkImage(img)),
    );
  }
}
