import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/home/widgets/cat_tabs.dart';
import 'package:event_hub/features/home/widgets/header_row.dart';
import 'package:event_hub/features/home/widgets/search_bar.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  required  this.controller,
  });
final ZoomDrawerController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 190,
          decoration: BoxDecoration(
            color: AppColors.deepPurple,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        Column(children: [HeaderRow(controller: controller,), SearchBar()]),
        Positioned(
          bottom: -10,
          left: 0,
          right: 0,
          child: CatTabs(),
        ),
      ],
    );
  }
}
