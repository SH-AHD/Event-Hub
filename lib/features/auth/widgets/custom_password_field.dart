import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.hint,
    this.radius = 12,
    this.suffix,
    this.validator,
  });
  final String hint;
  final double radius;
  final String? suffix;
  final String? Function(String?)? validator;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool secure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secure,
      decoration: InputDecoration(
        prefixIcon: Image.asset(AppAssets.password),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              secure = !secure;
            });
          },
          child: secure == true
              ? Image.asset(AppAssets.passwordEye)
              : Icon(Icons.remove_red_eye),
        ),
        hint: Text(
          widget.hint,
          style: TextStyles.body3.copyWith(color: AppColors.grayColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.redColor),
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.redColor),
          borderRadius: BorderRadius.circular(widget.radius),
        ),
      ),
      validator: widget.validator,
    );
  }
}
