import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/home/data/events_model.dart';
import 'package:event_hub/features/home/widgets/event_section.dart';
import 'package:event_hub/features/home/widgets/header.dart';
import 'package:event_hub/features/home/widgets/invite_card.dart';
import 'package:event_hub/features/home/widgets/nav_bar.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key ,required this.controller});
final ZoomDrawerController controller;
  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  final List<EventsModel> events = eventsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.whiteColor,
      floatingActionButton: _addEventFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(controller:widget.controller),
            SizedBox(height: 10),
            EventSection(sectionTitle: "Upcoming Events", events: events),
            InviteCard(),
            EventSection(sectionTitle: "Nearby You", events: events.reversed.toList()),
          ],
        ),
      ),

      bottomNavigationBar: NavBar(),
    );
  }
}



FloatingActionButton _addEventFloatingButton(){
  return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: AppColors.primaryColor,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onPressed: () {},
      child:   SvgPic(img: AppAssets.addSvg),
    );
}