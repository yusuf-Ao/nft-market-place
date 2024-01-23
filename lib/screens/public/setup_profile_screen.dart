// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/screens/public/welcome_screen.dart';
import 'package:nft_market_place/widgets/custom_button_widget.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class SetupProfileScreen extends StatefulWidget {
  const SetupProfileScreen({super.key});

  @override
  State<SetupProfileScreen> createState() => _SetupProfileScreenState();
}

class _SetupProfileScreenState extends State<SetupProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgPrimary,
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
          child: Text('Setup Profile'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(24),
          ),
          child: Column(
            children: [
              SizedBox(height: 2.0.hp),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Upload Profile Photo',
                    size: 12.0.sp,
                    color: Colors.white,
                    weight: FontWeight.w400,
                    alignment: TextAlign.start,
                  ),
                  SizedBox(height: 2.0.hp),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 80,
                          backgroundColor: AppStyles.bgGrayLight,
                          child: Icon(
                            Icons.upload_rounded,
                            size: 30.0.sp,
                          ),
                          // backgroundImage:
                          //     AssetImage('assets/images/user__1.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0.hp),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                horizontal: AppLayout.getWidth(10),
                              ),
                              decoration: BoxDecoration(
                                color: AppStyles.bgGrayLight,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                // controller: passwordController,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusColor: Colors.white,
                                  hintText: 'Username',
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.0.hp),
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                horizontal: AppLayout.getWidth(10),
                              ),
                              decoration: BoxDecoration(
                                color: AppStyles.bgGrayLight,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                // controller: passwordController,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.0.hp),
                            Container(
                              width: double.maxFinite,
                              height: AppLayout.getHeight(200),
                              padding: EdgeInsets.symmetric(
                                horizontal: AppLayout.getWidth(10),
                              ),
                              decoration: BoxDecoration(
                                color: AppStyles.bgGrayLight,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                // controller: passwordController,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Bio',
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0.hp),
                          ],
                        ),
                      ),
                      CustomButtonWidget(
                        text: 'Submit',
                        width: double.maxFinite,
                        height: AppLayout.getHeight(50),
                        onTapHandler: () {
                          Get.to(() => WelcomeScreen());
                        },
                        fontSize: 14.0.sp,
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w400,
                        backgroundColor: AppStyles.bgBlue,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
