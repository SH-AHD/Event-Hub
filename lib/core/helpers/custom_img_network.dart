import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomImgNetwork extends StatelessWidget {
  const CustomImgNetwork({super.key,
  required this.imgurl, this.w, this.h,
  this.fit});
final String imgurl;
final double? w;
final double? h;
final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Image.network(imgurl, 
    width: w??double.infinity,
    height: h,
    fit: fit,
    errorBuilder: (context, error, stackTrace) =>  _buildPlaceholder(),
    
    );
  }

   Widget _buildPlaceholder() => Container(
    height: 100,
    color: AppColors.borderColor,
    child: const Center(
      child: Icon(
        Icons.error_outline, 
        color: AppColors.redColor,
        size: 30,
      ),

    ),

  );
}