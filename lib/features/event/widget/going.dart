import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/constants/app_network_imgs.dart';
import 'package:event_hub/features/event/widget/circ.dart';
import 'package:event_hub/features/event/widget/invite.dart';
import 'package:flutter/material.dart';

class InviteCard extends StatelessWidget {
  const InviteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 35),
                child: SizedBox(
                  height: 32,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CirProfilePic1(img: AppNetworkImgs.imgProf1),
                      Positioned(
                        left: -20,
                        child: CirProfilePic1(img: AppNetworkImgs.imgProf2),
                      ),

                      Positioned(
                        left: -40,
                        child: CirProfilePic1(img: AppNetworkImgs.imgProf3),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                "+20 Going",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: AppColors.headLineColor.withOpacity(0.5),
                builder: (context) => const InviteFriendsSheet(),
              );
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6366F1),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 0,
            ),
            child: const Text("Invite"),
          ),
        ],
      ),
    );
  }
}
