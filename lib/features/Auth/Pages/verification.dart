import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/main_button.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Resset Password',
              style: TextStyles.h4EventHub.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Please enter your email address to\nrequest a password reset',
              style: TextStyles.body2,
            ),
            SizedBox(height: 26),
            Pinput(
              keyboardType: TextInputType.numberWithOptions(),
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              defaultPinTheme: PinTheme(
                width: 55,
                height: 55,
                textStyle: TextStyles.h4EventHub,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.borderColor),
                  color: AppColors.whiteColor,
                ),
              ),
              preFilledWidget: SvgPic(img: AppAssets.pinPutSvg),
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                height: 58,
                width: 271,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 35,
                      spreadRadius: 0,
                      color: Color(0xff5669FF).withValues(alpha: 0.25),
                    ),
                  ],
                ),
                child: MainButton(text: 'Continue'),
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: Text('Re-send code in  0:20', style: TextStyles.body2),
            ),
          ],
        ),
      ),
    );
  }
}
