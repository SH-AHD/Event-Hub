import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerTab extends StatelessWidget {
  const DrawerTab({
    super.key,
   required this.iconPath,required this.title,
  }) ;

final String title;
final String iconPath;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPic(img: iconPath,),
       title: Text(title, style: TextStyle(color: AppColors.blackColor,fontSize: 15, )),
      onTap: () {
        ZoomDrawer.of(context)!.close();
      },
    );
  }
}
