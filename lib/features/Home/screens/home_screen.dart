import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/Home/screens/home_screen_content.dart';
import 'package:event_hub/features/Home/data/events_model.dart';
import 'package:event_hub/features/Home/widgets/drawer_content.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<EventsModel> events = eventsList;
  final _zoomDrawerController = ZoomDrawerController();
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: ZoomDrawer(
       mainScreenTapClose : true,
        controller:_zoomDrawerController,
        style:DrawerStyle.defaultStyle,
        menuScreen:DrawerContent(),
        mainScreen: HomeScreenContent(controller: _zoomDrawerController),
        borderRadius: 40,
        showShadow: true,
        angle: 0,
        drawerShadowsBackgroundColor: Colors.grey[300]!,
        slideWidth: MediaQuery.of(context).size.width*0.75,
       
      ),
    );
  }
}
