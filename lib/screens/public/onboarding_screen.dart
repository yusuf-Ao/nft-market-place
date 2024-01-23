// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/data/index.dart';
import 'package:nft_market_place/screens/public/start_screen.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: onboardingData.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: AppStyles.bgPrimary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: AppLayout.getHeight(40)),
                Image.asset(onboardingData[index]['image']),
                SizedBox(height: AppLayout.getHeight(20)),
                Container(
                  width: double.maxFinite,
                  height: AppLayout.getHeight(350),
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(42),
                    horizontal: AppLayout.getHeight(18),
                  ),
                  decoration: BoxDecoration(
                    color: AppStyles.bgGrayLight,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        text: onboardingData[index]['title'],
                        size: 34.0.sp,
                        color: Colors.white,
                        weight: FontWeight.bold,
                        alignment: TextAlign.center,
                      ),
                      SizedBox(height: 1.5.hp),
                      CustomTextWidget(
                        text: onboardingData[index]['subtitle'],
                        color: Colors.white,
                        alignment: TextAlign.center,
                      ),
                      SizedBox(height: 3.0.hp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (dotIndex) {
                            return Container(
                              margin: EdgeInsets.only(
                                left: AppLayout.getHeight(10),
                              ),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == dotIndex
                                    ? Colors.white
                                    : AppStyles.bgPrimary,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 3.0.hp),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentPage++;
                          });
                          if (currentPage == 2) {
                            Get.to(() => StartScreen());
                          } else {
                            pageController.jumpToPage(currentPage);
                          }
                        },
                        child: Container(
                          height: AppLayout.getHeight(50),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: AppStyles.bgBlue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: CustomTextWidget(
                              text: 'Next',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
