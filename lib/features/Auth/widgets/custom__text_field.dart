import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.prefix,
    required this.hint,
    this.radius = 12,
    this.keyboard,
  });
  final String? prefix;
  final String hint;
  final double radius;
  final TextInputType? keyboard;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard == null ? null : keyboard,
      decoration: InputDecoration(
        prefixIcon: prefix == null ? null : Image.asset(prefix!),
        hint: Text(
          hint,
          style: TextStyles.body3.copyWith(color: AppColors.grayColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(radius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(radius),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.redColor),
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.redColor),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
