import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/main_button.dart';
import 'package:event_hub/features/auth/widgets/custom__text_field.dart';
import 'package:event_hub/features/auth/widgets/custom_button.dart';
import 'package:event_hub/features/auth/widgets/custom_password_field.dart';
import 'package:event_hub/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  var key = GlobalKey<FormState>();
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Form(
                  key: key,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Sign up', style: TextStyles.h4EventHub),
                      ),
                      SizedBox(height: 21),
                      CustomTextField(
                        hint: 'Full name',
                        prefix: AppAssets.profile,
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'this field is required';
                          }
                        },
                      ),
                      SizedBox(height: 21),
                      CustomTextField(
                        hint: 'abc@email.com',
                        prefix: AppAssets.mail,
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'this field is required';
                          } else if (!value!.contains('@')) {
                            return 'enter a valid email';
                          }
                        },
                      ),
                      SizedBox(height: 19),
                      CustomPasswordField(
                        hint: 'Your password',
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'this field is required';
                          } else if (value!.length < 6) {
                            return 'password must be more than 5 characters ';
                          }
                        },
                      ),
                      SizedBox(height: 19),
                      CustomPasswordField(
                        hint: 'Confirm password',
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'this field is required';
                          } else if (value!.length < 6) {
                            return 'password must be more than 5 characters ';
                          }
                        },
                      ),
                      SizedBox(height: 22),
                      Container(
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
                        child: MainButton(
                          text: 'Sign up',
        
                          onPress: () {
                            if (key.currentState?.validate() == true) {
                              pushReplacementPage(
                                context: context,
                                newScreen: HomeScreen(),
                              );
                            }
                          },
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
                            Text(
                              'Don’t have an account? ',
                              style: TextStyles.body2.copyWith(
                                color: AppColors.titleColor,
                              ),
                            ),
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
            ),
          ),
        ),
      ],
    );
  }
}
