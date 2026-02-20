import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/main_button.dart';
import 'package:event_hub/features/Auth/widgets/custom__text_field.dart';
import 'package:event_hub/features/Auth/widgets/custom_button.dart';
import 'package:event_hub/features/Auth/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Sign up', style: TextStyles.h4EventHub),
              ),
              SizedBox(height: 21),
              CustomTextField(hint: 'Full name', prefix: AppAssets.profile),
              SizedBox(height: 21),
              CustomTextField(hint: 'abc@email.com', prefix: AppAssets.mail),
              SizedBox(height: 19),
              CustomPasswordField(hint: 'Your password'),
              SizedBox(height: 19),
              CustomPasswordField(hint: 'Confirm password'),
              SizedBox(height: 22),
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
                  child: MainButton(text: 'Sign up'),
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
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account? ', style: TextStyles.body2),
                    Text(
                      'Signin',
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
