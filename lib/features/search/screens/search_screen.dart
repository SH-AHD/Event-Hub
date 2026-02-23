import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/event_card.dart';
import 'package:event_hub/features/home/data/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatefulWidget {
   const SearchScreen( {super.key});
 

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.whiteColor,
      appBar: AppBar(backgroundColor: AppColors.whiteColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Search...'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(mainAxisSize: MainAxisSize.min,
              children: [
                IntrinsicWidth(
                  child: TextFormField(
                    decoration:  InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      hintText: '|Search',
                      hintStyle: TextStyles.title1ScreensEventhub.copyWith(color: AppColors.grayColor),
                      prefixIcon: Icon(Icons.search,size: 24,color: AppColors.primaryColor,),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.filterSvg,color: AppColors.whiteColor,),
                        SizedBox(width: 4,),
                      Text('Filters ',style: TextStyles.subTitle2.copyWith(color: AppColors.whiteColor),),
                    ],
                  ),
                ),
                // FilterChip(label: Text('data'), onSelected: (bool selected) {}),
              ],
            ),
            event_card()
          ],
        ),
      ),
    );
  }
}
