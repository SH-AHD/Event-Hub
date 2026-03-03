import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/home/data/category_model.dart';
import 'package:flutter/material.dart';

class CatTabs extends StatelessWidget {
   CatTabs({
    super.key,
    this.inMap=false,
  });

final  catmap=categoriesList;
final bool inMap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              width: 110,
              decoration: BoxDecoration(
                color: inMap?AppColors.whiteColor: categoriesList[index].color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: SvgPic(img: categoriesList[index].icon,
                    color: inMap?categoriesList[index].color:null,
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text(categoriesList[index].category, style: TextStyles.body2.copyWith(fontWeight: FontWeight.w500, color:inMap?Color(0xff8A8D9F): AppColors.whiteColor,)),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 12);
          },
        ),
      ),
    );
  }
}
