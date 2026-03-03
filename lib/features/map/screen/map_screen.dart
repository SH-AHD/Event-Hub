import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/core/widgets/cat_tabs.dart';
import 'package:event_hub/features/map/widgets/event_list.dart';
import 'package:event_hub/features/search/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.mapViewImg,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 20,
            left: 15,
            right: 0,
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
              
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios, size: 20),
                          ),
                          hintText: "Find for food or restaurant...",
                          hintStyle: TextStyles.body3.copyWith(
                            color: Color(0xff616679),
                          ),
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {},
                    child: SvgPic(
                      img: AppAssets.mapFilterSvg,
                      width: 100,
                      height: 80,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(top: 100, left: 15, right: 0, child: CatTabs(inMap: true)),

          Positioned(
            bottom: 180,
         right: 25,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  useSafeArea: true,
                  backgroundColor: AppColors.whiteColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38),
                    ),
                  ),
                  builder: (context) => FilterScreen(),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: SvgPic(
                  img: AppAssets.filterSvg,
                  color: AppColors.primaryColor,
                  width: 40,
               
                ),
              ),
            ),
          ),

          Positioned(bottom: 30, left: 0, right: 0, child: EventList()),
        ],
      ),
    );
  }
}
