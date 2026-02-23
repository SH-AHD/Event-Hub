import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/home/widgets/notification.dart';
import 'package:event_hub/features/home/widgets/select_location.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HeaderRow extends StatelessWidget {
    const HeaderRow({
    super.key,

  required  this.controller,
  });
  final ZoomDrawerController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 30,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              
              ZoomDrawer.of(context)?.toggle();
            },
            icon: SvgPic(img: AppAssets.drawerMenuSvg),
          ),
          SelectLocation(),
          Notification(),
        ],
      ),
    );
  }
}
