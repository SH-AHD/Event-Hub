import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/features/Home/Screens/search/data/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterScreen extends StatefulWidget {
 FilterScreen({super.key});
  final List<CategoryModel> categories = categoriesList;
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final bool isCategorySelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(38),
          topRight: Radius.circular(38),
        ),
      ),
      child: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,

            itemBuilder: (BuildContext context, int index) {
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle category selection
                    },
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: isCategorySelected
                          ? AppColors.primaryColor
                          : AppColors.whiteColor,
                      child: SvgPicture.asset(
                        categoriesList[index].icon,
                        // ignore: deprecated_member_use
                        color: isCategorySelected
                            ? AppColors.whiteColor
                            : AppColors.grayColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    categoriesList[index].category,
                    style: TextStyles.body2.copyWith(color: AppColors.titleColor),
                      
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
