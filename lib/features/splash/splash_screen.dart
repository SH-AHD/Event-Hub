import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/features/Onboard/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      pushReplacementPage(context: context, newScreen: OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.whiteColor,
          ),

          Image.asset(
            AppAssets.splashBg,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(child: SvgPicture.asset(AppAssets.logoSvg)),
        ],
      ),
    );
  }
}
