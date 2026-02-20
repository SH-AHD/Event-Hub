import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/main_button.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:event_hub/features/Auth/Pages/sign_up.dart';
import 'package:event_hub/features/Auth/widgets/custom__text_field.dart';
import 'package:event_hub/features/Auth/widgets/custom_button.dart';
import 'package:event_hub/features/Auth/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 73),
              SvgPic(img: AppAssets.evntHubSvg, height: 55),
              Text('EventHub', style: TextStyles.headLine),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Sign in', style: TextStyles.h4EventHub),
              ),
              SizedBox(height: 21),
              CustomTextField(hint: 'abc@email.com', prefix: AppAssets.mail),
              SizedBox(height: 19),
              CustomPasswordField(hint: 'Your password'),
              SizedBox(height: 22),
              Row(
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      activeTrackColor: AppColors.primaryColor,
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 6),
                  Text('Remember Me', style: TextStyles.body3.copyWith()),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Forgot Password?', style: TextStyles.body3),
                  ),
                ],
              ),

              SizedBox(height: 36),
              SizedBox(
                height: 58,
                width: 271,
                child: Container(
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
                  child: MainButton(text: 'Sign in'),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'OR',
                style: TextStyles.title2Eventhub.copyWith(
                  color: AppColors.grayColor,
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 58,
                width: 273,
                child: CustomButton(
                  imageAsset: AppAssets.google,
                  text: 'Login with Google',
                ),
              ),
              SizedBox(height: 17),
              SizedBox(
                height: 58,
                width: 273,
                child: CustomButton(
                  imageAsset: AppAssets.facebook,
                  text: 'Login with Facebook',
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  pushPage(context: context, newScreen: SignUp());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ', style: TextStyles.body2),
                    Text(
                      'Sign up',
                      style: TextStyles.body2.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
