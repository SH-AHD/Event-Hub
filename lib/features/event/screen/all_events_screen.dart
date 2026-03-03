import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/event/widget/events_list_card.dart';
import 'package:event_hub/features/search/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllEventsScreen extends StatefulWidget {
  const AllEventsScreen({super.key});

  @override
  State<AllEventsScreen> createState() => _AllEventsScreenState();
}

class _AllEventsScreenState extends State<AllEventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Events'),
        actions: [
          IconButton(onPressed: () {  
pushPage(context: context, newScreen: SearchScreen());

          }, icon:  SvgPic(img:AppAssets.searchSvg,color: AppColors.blackColor,)),
          IconButton(onPressed: () {  }, icon: Icon(Icons.menu))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [EventsListCard()]),
      ),
    );
  }
}
