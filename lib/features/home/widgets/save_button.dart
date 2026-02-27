import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatefulWidget {
  const SaveButton({
    super.key,
  });

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool saved=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: (){
setState(() {
  saved=!saved;

});
     },
      child: Padding(
       padding: EdgeInsets.all(10),
       child: Container(
         height: 40,
         width: 40,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: AppColors.whiteColor.withValues(alpha: 0.6),
       
         ),
         child:Padding(
           padding: const EdgeInsets.all(10),
           child: saved?  SvgPic(img: AppAssets.saveSvg, height: 10,): SvgPic(img: AppAssets.saveSvg, height: 10,color: AppColors.lightGrayColor,),
         ) ),
              ),
    );
  }
}