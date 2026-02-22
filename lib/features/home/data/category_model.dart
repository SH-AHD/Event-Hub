import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final String category;
  final String icon;
  final Color color;

  CategoryModel({required this.category, required this.icon, required this.color});
}

 List<CategoryModel> categoriesList = [
  CategoryModel(category: "Sports", icon: AppAssets.sportsSvg,color: AppColors.redColor),
  CategoryModel(category: "Music", icon: AppAssets.musicSvg,color: AppColors.orangeColor),
  CategoryModel(category: "Food", icon: AppAssets.foodSvg,color: AppColors.greenColor),
  CategoryModel(category: "Art", icon: AppAssets.artSvg,color: AppColors.deepCyan),
];