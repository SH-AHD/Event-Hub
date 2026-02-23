import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/features/search/data/category_list.dart';
import 'package:event_hub/features/search/widget/slider_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({super.key});
  final List<CategoryModel> categories = categoriesList;
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedIndex = -1;
  Set<int> selectedIndexes = {};
  SfRangeValues _values = SfRangeValues(40, 120);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Filter',
            style: TextStyles.title1ScreensEventhub.copyWith(
              color: AppColors.titleColor,
            ),
          ),
          SizedBox(height: 20),
          categore_filter(),
          SizedBox(height: 20),
          time_date(context),
          SizedBox(height: 20),
          Text(
            'Location',
            style: TextStyles.title1Eventhub.copyWith(
              color: AppColors.titleColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(color: AppColors.borderColor),
              fixedSize: Size(double.infinity, 60),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: BoxBorder.all(
                      color: AppColors.borderColor,
                      width: 7,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppAssets.locationfilter),
                  ),
                ),
                SizedBox(width: 18),
                Text(
                  'New Yourk, USA',
                  style: TextStyles.mainBody.copyWith(
                    color: AppColors.titleColor,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.primaryColor,
                  size: 15,
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Text(
                'Select price range',
                style: TextStyles.title1Eventhub.copyWith(
                  color: AppColors.titleColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Text(
                '\$${_values.start.toString()}-\$${_values.end.toString()}',
                style: TextStyles.title1Eventhub.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          slider(),
          SizedBox(height: 20),
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      return;
                    });
                  },
                  child: Container(
                    height: 58,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.whiteColor,
                      border: BoxBorder.all(color: AppColors.borderColor),
                    ),
                    child: Center(
                      child: Text(
                        'RESET',
                        style: TextStyles.button2.copyWith(
                          color: AppColors.titleColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: AppColors.primaryColor,
                        border: BoxBorder.all(color: AppColors.borderColor),
                      ),
                      child: Center(
                        child: Text(
                          'APPLY',
                          style: TextStyles.button2.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Gap(45),
        ],
      ),
    );
  }

  SfRangeSlider slider() {
    return SfRangeSlider(
      min: 0.0,
      max: 200.0,
      values: _values,
      stepSize: 1,

      thumbShape: RectThumbShape(
        width: 35,
        height: 35,
        color: AppColors.whiteColor,
        borderColor: AppColors.primaryColor,
        borderWidth: 1,
      ),
      endThumbIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: SvgPicture.asset(AppAssets.slider, width: 16, height: 8),
      ),
      startThumbIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: SvgPicture.asset(AppAssets.slider, width: 16, height: 8),
      ),
      // interval: 20,
      // showTicks: true,
      // showLabels: true,
      // enableTooltip: true,
      minorTicksPerInterval: 1,
      onChanged: (SfRangeValues values) {
        setState(() {
          _values = values;
        });
      },
    );
  }

  Column time_date(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Time & Date',
          style: TextStyles.title1Eventhub.copyWith(
            color: AppColors.titleColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            date_bar(context, 0, 'Today'),
            SizedBox(width: 12),
            date_bar(context, 1, 'Tomorrow'),
            SizedBox(width: 12),
            date_bar(context, 2, 'This week'),
          ],
        ),
        SizedBox(height: 14),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: BorderSide(color: AppColors.borderColor),
            fixedSize: Size(265, 42),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AppAssets.calandar,
                // ignore: deprecated_member_use
                color: AppColors.primaryColor,
              ),
              SizedBox(width: 12),
              Text(
                'Choose from calender',
                style: TextStyles.body2.copyWith(color: AppColors.grayColor),
              ),
              SizedBox(width: 14),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.primaryColor,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Expanded date_bar(BuildContext context, int index, titel) {
    // final String titel='';
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: selectedIndex == index
              ? AppColors.primaryColor
              : AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(color: AppColors.borderColor),
          fixedSize: Size(double.infinity, 42),
        ),
        child: Text(
          titel,
          style: TextStyles.body2.copyWith(
            color: selectedIndex == index
                ? AppColors.whiteColor
                : AppColors.grayColor,
          ),
        ),
      ),
    );
  }

  Expanded categore_filter() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.categories.length,
                itemExtent: 80,
                itemBuilder: (BuildContext context, int index) {
                  final isSelected = selectedIndexes.contains(index);
                  return Column(
                    mainAxisSize: MainAxisSize.min,
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
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        categoriesList[index].category,
                        style: TextStyles.body2.copyWith(
                          color: AppColors.titleColor,
                        ),
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
