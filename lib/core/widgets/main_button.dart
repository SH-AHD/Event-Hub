import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: () {},
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(text, style: TextStyles.button),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: AppColors.buttonArrowBackground,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
