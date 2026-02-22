import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/home/data/category_model.dart';
import 'package:flutter/material.dart';

class CatTabs extends StatelessWidget {
   CatTabs({
    super.key,
  });

final  catmap=categoriesList;


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
                color: categoriesList[index].color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: SvgPic(img: categoriesList[index].icon),
                  ),
                  SizedBox(width: 8,),
                  Text(categoriesList[index].category, style: TextStyles.body2.copyWith(fontWeight: FontWeight.w500)),
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
