import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/features/Home/widgets/cir_profile_pic.dart';
import 'package:flutter/material.dart';

class Profileimg extends StatelessWidget {
  const Profileimg({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CirProfilePic(img: AppAssets.profilegoing1),
          Positioned(
            left: -20,
            child: CirProfilePic(img: AppAssets.profilegoing2),
          ),

          Positioned(
            left: -40,
            child: CirProfilePic(img: AppAssets.profilegoing3),
          ),
        ],
      ),
    );
  }
}
