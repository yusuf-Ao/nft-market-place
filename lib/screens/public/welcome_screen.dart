// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/screens/main/dashboard.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

    runTimeout();
  }

  void runTimeout() async {
    await Future.delayed(Duration(seconds: 5));
    Get.to(() => DashboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/welcome__screen.png'),
            SizedBox(height: 10.0.sp),
            CustomTextWidget(
              text: 'Hey! Welcome',
              color: Colors.white,
              size: 30.0.sp,
              weight: FontWeight.bold,
            ),
            SizedBox(height: 1.0.sp),
            CustomTextWidget(
              text: 'Create and Sell your NFT in 1 seconds',
              color: Colors.white.withOpacity(0.6),
              size: 16.0.sp,
              weight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
