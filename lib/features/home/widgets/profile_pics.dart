import 'package:event_hub/core/constants/app_network_imgs.dart';
import 'package:event_hub/features/home/widgets/cir_profile_pic.dart';
import 'package:flutter/material.dart';

class ProfilePics extends StatelessWidget {
  const ProfilePics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 35),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CirProfilePic(img : AppNetworkImgs.imgProf1),
          Positioned(
            left: -20,
            child:  CirProfilePic(img : AppNetworkImgs.imgProf2), ),
      
          Positioned(
            left: -40,
            child:  CirProfilePic(img : AppNetworkImgs.imgProf3),
             ),
        ],
      ),
    );
  }
}
