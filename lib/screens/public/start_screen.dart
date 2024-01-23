// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/screens/public/connect_wallet_screen.dart';
import 'package:nft_market_place/widgets/custom_button_widget.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: AppLayout.getHeight(200),
            width: AppLayout.getWidth(272),
            child: Image.asset(
              'assets/images/start__screen.png',
              alignment: Alignment.topLeft,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(20),
              horizontal: AppLayout.getWidth(24),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomTextWidget(
                      text: 'All NFTs are certifiably unique and ownable.',
                      color: Colors.white,
                      size: 24.0.sp,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(height: 2.0.hp),
                    CustomTextWidget(
                      text:
                          'A credible and excellent marketplace for non-fungible token.',
                      color: Colors.grey.shade400,
                      size: 16.0.sp,
                    ),
                  ],
                ),
                SizedBox(height: 20.0.hp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButtonWidget(
                      text: 'Connect with Wallet',
                      width: AppLayout.getWidth(230),
                      height: AppLayout.getHeight(50),
                      onTapHandler: () {
                        Get.to(() => ConnectWalletScreen());
                      },
                      fontSize: 12.0.sp,
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w600,
                      backgroundColor: AppStyles.bgBlue,
                    ),
                    // Container(
                    //   width: AppLayout.getWidth(230),
                    //   height: AppLayout.getHeight(50),
                    //   decoration: BoxDecoration(
                    //     color: AppStyles.bgBlue,
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: Center(
                    //     child: CustomTextWidget(
                    //       text: 'Connect with Wallet',
                    //       color: Colors.white,
                    //       size: 12.0.sp,
                    //       weight: FontWeight.w600,
                    //     ),
                    //   ),
                    // ),
                    Container(
                      width: AppLayout.getWidth(66),
                      height: AppLayout.getHeight(44),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
