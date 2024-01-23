// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/screens/public/setup_profile_screen.dart';
import 'package:nft_market_place/widgets/custom_button_widget.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';
import 'package:nft_market_place/widgets/connect_wallet_button_widget.dart';

class ConnectWalletScreen extends StatefulWidget {
  const ConnectWalletScreen({super.key});

  @override
  State<ConnectWalletScreen> createState() => _ConnectWalletScreenState();
}

class _ConnectWalletScreenState extends State<ConnectWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white.withOpacity(0),
        backgroundColor: Colors.white.withOpacity(0),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Center(
          child: Image.asset('assets/images/logo__2.png'),
        ),
      ),
      backgroundColor: AppStyles.bgPrimary,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(24),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 2.0.hp),
                  Center(
                    child: Image.asset('assets/images/connect__wallet.png'),
                  ),
                  SizedBox(height: 2.0.hp),
                  Column(
                    children: [
                      CustomTextWidget(
                        text: 'Choose your wallet',
                        color: Colors.white,
                        size: 30.0.sp,
                        weight: FontWeight.bold,
                      ),
                      SizedBox(height: 2.0.hp),
                      CustomTextWidget(
                        text:
                            'By connecting your wallet you agree to our Terms of Service and Privacy Policy',
                        color: Colors.white.withOpacity(0.6),
                        alignment: TextAlign.center,
                      ),
                      SizedBox(height: 2.0.hp),
                      ConnectWalletButton(
                        image: 'assets/images/metamask.png',
                        title: 'MetaMask',
                        onTapHandler: () {},
                      ),
                      SizedBox(height: 1.0.hp),
                      ConnectWalletButton(
                        image: 'assets/images/trust_wallet.png',
                        title: 'Trust Wallet',
                        onTapHandler: () {},
                      ),
                      SizedBox(height: 1.0.hp),
                      ConnectWalletButton(
                        image: 'assets/images/chain.png',
                        title: 'Ethereum address',
                        onTapHandler: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.white.withOpacity(0),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: AppLayout.getHeight(300),
                                padding: EdgeInsets.symmetric(
                                  vertical: AppLayout.getHeight(44),
                                  horizontal: AppLayout.getWidth(24),
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyles.bgPrimary,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Enter ethereum address',
                                          color: Colors.white,
                                          size: 20.0.sp,
                                          alignment: TextAlign.start,
                                          weight: FontWeight.w600,
                                        ),
                                        SizedBox(height: 1.0.hp),
                                        Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: AppLayout.getWidth(10),
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey.shade200,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextFormField(
                                            textInputAction:
                                                TextInputAction.next,
                                            // controller: passwordController,
                                            keyboardType:
                                                TextInputType.multiline,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Ethereum address',
                                              hintStyle: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.6),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.all(10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'Continue',
                                      width: double.maxFinite,
                                      height: AppLayout.getHeight(50),
                                      onTapHandler: () {
                                        Get.to(() => SetupProfileScreen());
                                      },
                                      fontSize: 14.0.sp,
                                      fontColor: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      backgroundColor: AppStyles.bgBlue,
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(height: 10.0.hp),
                      CustomButtonWidget(
                        text: 'Continue',
                        width: double.maxFinite,
                        height: AppLayout.getHeight(50),
                        onTapHandler: () {
                          Get.to(() => SetupProfileScreen());
                        },
                        fontSize: 16.0.sp,
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w600,
                        backgroundColor: AppStyles.bgBlue,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
