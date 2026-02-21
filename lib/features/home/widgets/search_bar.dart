import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // pushPage(context: context, newScreen: SearchScreen()),
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 24,
        ),
        child:  Row(
          children: [
            SvgPic(img: AppAssets.searchSvg, height: 30),
            SizedBox(width: 10),
            Container(
              width: 0.5,
              height: 18,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyles.h6EventHub.copyWith(color: AppColors.whiteColor.withValues(alpha: 0.2), fontWeight: FontWeight.w400),
                border: InputBorder.none,
                enabled: false,
                ),
              ),
            ), //search
      
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColors.borderColor.withValues(alpha: 0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                child: Row(
                  children: [
                    SvgPic(img: AppAssets.filterSvg,height: 30,),
                  const  SizedBox(width: 5),
                  const  Text("Filters", style: TextStyles.title3Eventhub,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
