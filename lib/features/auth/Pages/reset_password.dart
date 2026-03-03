import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/main_button.dart';
import 'package:event_hub/features/auth/Pages/verification.dart';
import 'package:event_hub/features/auth/widgets/custom__text_field.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: SingleChildScrollView(
          child: Form(
            key: key,
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
                  style: TextStyles.body2.copyWith(color: AppColors.titleColor),
                ),
                SizedBox(height: 26),
                CustomTextField(
                  hint: 'abc@email.com',
                  prefix: AppAssets.mail,
                  keyboard: TextInputType.emailAddress,
                  validator: (value) {
                    if (value?.isEmpty == true) {
                      return 'this field is required';
                    } else if (!value!.contains('@')) {
                      return 'enter a valid email';
                    }
                  },
                ),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
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
                    child: MainButton(
                      text: 'send',
                      onPress: () {
                        if (key.currentState?.validate() == true) {
                          pushPage(context: context, newScreen: Verification());
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
