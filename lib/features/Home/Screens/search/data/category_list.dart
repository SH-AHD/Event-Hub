import 'package:event_hub/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final String category;
  final String icon;
  final Color? color;

  CategoryModel({required this.category, required this.icon, this.color});
}

 List<CategoryModel> categoriesList = [
  CategoryModel(category: "Sports", icon: AppAssets.sportsSvg,color: Colors.transparent),
  CategoryModel(category: "Music", icon: AppAssets.musicSvg,color: Colors.transparent),
  CategoryModel(category: "Food", icon: AppAssets.foodSvg,color: Colors.transparent),
  CategoryModel(category: "Food", icon: AppAssets.foodSvg,color: Colors.transparent),
  CategoryModel(category: "Sports", icon: AppAssets.sportsSvg,color: Colors.transparent),
  CategoryModel(category: "Art", icon: AppAssets.artSvg,color: Colors.transparent),
];