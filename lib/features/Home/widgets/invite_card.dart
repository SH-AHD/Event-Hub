import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class InviteCard extends StatelessWidget {
  const InviteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Container(
        width: 335,
        height: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.secondaryColor.withValues(alpha: 0.18),
        ),
        child:  Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Invite your friends",
                    style: TextStyles.title1Eventhub.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Get \$20 for ticket",
                    style: TextStyles.title2Eventhub.copyWith(
                      color: AppColors.headLineColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                const  SizedBox(height: 5),
    
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child:const Text("INVITE", style: TextStyles.body2),
                  ),
                ],
              ),
            ),
    
            Positioned(
              right: -25,
              bottom: -30,
              child: Image.asset(
                AppAssets.inviteImg,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
