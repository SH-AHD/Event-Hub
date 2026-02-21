import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/main_button.dart';
import 'package:event_hub/features/Auth/Pages/verification.dart';
import 'package:event_hub/features/Auth/widgets/custom__text_field.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: SingleChildScrollView(
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
              CustomTextField(
                hint: 'abc@email.com',
                prefix: AppAssets.mail,
                keyboard: TextInputType.emailAddress,
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
                      pushPage(context: context, newScreen: Verification());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
