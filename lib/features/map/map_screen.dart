import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.mapViewImg),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              
              padding: const EdgeInsets.all(10),
              child: Row(
              children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                    Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios),),
                  ],
                ),
              ),
              ],
                        ),
            ),
          ),
        ],
      ),
    );
  }
}