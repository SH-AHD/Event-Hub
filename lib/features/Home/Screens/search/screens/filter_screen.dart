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
  Set<int> selectedIndexes = {};
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
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text( 
            'Filter',
            style: TextStyles.title1ScreensEventhub.copyWith(color: AppColors.titleColor),
          ),  
          categore_filter(),
        ],
      ),
    );
  }

  Expanded categore_filter() {
    return Expanded(
          child: Row(
            children: [
              Expanded(
                child: SizedBox(height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.categories.length,
                    itemExtent: 80,
                    itemBuilder: (BuildContext context, int index) {
                      final isSelected = selectedIndexes.contains(index);
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSelected) {
                                  selectedIndexes.remove(index);
                                } else {
                                  selectedIndexes.add(index);
                                }
                              });
                            },
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: selectedIndexes.contains(index)
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor,
                                  
                              child: SvgPicture.asset(
                                categoriesList[index].icon,
                                // ignore: deprecated_member_use
                                color: selectedIndexes.contains(index)
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
                ),
              ),
            ],
          ),
        );
  }
}
