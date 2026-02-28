import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/features/Onboard/data/onboarding_model.dart';
import 'package:event_hub/features/auth/Pages/sign_in.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});
  final List<OnboardingModel> onboardpage = onboardingList;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: widget.onboardpage.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //  mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            onboardingList[index].image,
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(48),
                              topRight: Radius.circular(48),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 20,
                              right: 20,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  onboardingList[index].title,
                                  textAlign: TextAlign.center,
                                  style: TextStyles.h5EventHub.copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  onboardingList[index].description,
                                  textAlign: TextAlign.center,
                                  style: TextStyles.body3.copyWith(
                                    color: AppColors.whiteColor.withValues( alpha:
                                      0.8,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 40),
                                Expanded(
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          pushReplacementPage(
                                            context: context,
                                            newScreen: SignIn(),
                                          );
                                        },
                                        child: Text(
                                          'Skip',
                                          style: TextStyles.title1Eventhub
                                              .copyWith(
                                                color: AppColors.whiteColor
                                                    .withValues( alpha:0.5),
                                              ),
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: List.generate(
                                          onboardingList.length,
                                          (index) => Container(
                                            margin: EdgeInsets.all(4),
                                            width: 8,
                                            height: 8,
                                            decoration: BoxDecoration(
                                              color: currentIndex == index
                                                  ? AppColors.whiteColor
                                                  : AppColors.lightGrayColor,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if (index !=
                                                onboardingList.length - 1) {
                                              controller.nextPage(
                                                duration: Duration(
                                                  milliseconds: 400,
                                                ),
                                                curve: Curves.easeInOut,
                                              );
                                            } else {
                                              pushReplacementPage(
                                                context: context,
                                                newScreen: SignIn(),
                                              );
                                            }
                                          });
                                        },
                                        child: Text(
                                          'Next',
                                          style: TextStyles.title1Eventhub
                                              .copyWith(
                                                color: AppColors.whiteColor,
                                              ),
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
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
