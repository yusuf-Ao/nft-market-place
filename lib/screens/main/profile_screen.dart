// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/data/index.dart';
import 'package:nft_market_place/screens/main/pages/profile_activity_tabview.dart';
import 'package:nft_market_place/screens/main/pages/profile_collected_tabview.dart';
import 'package:nft_market_place/screens/main/pages/stats_activity_screen.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    TabController tabController = TabController(length: 6, vsync: this);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.45),
        child: AppBar(
          shadowColor: Colors.white.withOpacity(0),
          backgroundColor: Colors.white.withOpacity(0),
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: AppLayout.getWidth(10),
              height: AppLayout.getHeight(10),
              decoration: BoxDecoration(
                color: AppStyles.bgPrimary,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
            )
          ],
          flexibleSpace: Stack(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile__banner.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(22),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(
                              'assets/images/user__1.png',
                            ),
                          ),
                          Container(
                            height: 4.0.hp,
                            width: 20.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.white, width: 0.5),
                            ),
                            child: Center(
                              child: CustomTextWidget(
                                text: 'Edit',
                                color: Colors.white,
                                size: 12.0.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 2.0.hp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextWidget(
                                text: 'Kevin',
                                color: Colors.white,
                                weight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.copy,
                                    size: 15,
                                    color: AppStyles.bgBlue,
                                  ),
                                  SizedBox(width: 2.0.wp),
                                  CustomTextWidget(
                                    text: '0x841a...8a57',
                                    color: Colors.white.withOpacity(0.6),
                                    size: 12.0.sp,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.globe,
                                size: 20,
                                color: Colors.white.withOpacity(0.6),
                              ),
                              SizedBox(width: 2.0.wp),
                              FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 20,
                                color: Colors.white.withOpacity(0.6),
                              ),
                              SizedBox(width: 2.0.wp),
                              FaIcon(
                                FontAwesomeIcons.twitter,
                                size: 20,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppStyles.bgPrimary,
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight * 0.55,
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(22)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4.0.hp),
              CustomTextWidget(
                text: 'Sell anything',
                color: Colors.white.withOpacity(0.6),
                size: 12.0.sp,
              ),
              SizedBox(height: 2.0.hp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomTextWidget(
                        text: '54',
                        color: Colors.white,
                        size: 12.0.sp,
                      ),
                      SizedBox(width: 2.0.wp),
                      CustomTextWidget(
                        text: 'Items Total',
                        color: Colors.white.withOpacity(0.6),
                        size: 12.0.sp,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomTextWidget(
                        text: '3.7k',
                        color: Colors.white,
                        size: 12.0.sp,
                      ),
                      SizedBox(width: 2.0.wp),
                      CustomTextWidget(
                        text: 'Views',
                        color: Colors.white.withOpacity(0.6),
                        size: 12.0.sp,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomTextWidget(
                        text: '1.2k',
                        color: Colors.white,
                        size: 12.0.sp,
                      ),
                      SizedBox(width: 2.0.wp),
                      CustomTextWidget(
                        text: 'Liked',
                        color: Colors.white.withOpacity(0.6),
                        size: 12.0.sp,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 2.0.hp),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(
                    vertical: 1.0.hp,
                    horizontal: 2.0.wp,
                  ),
                  controller: tabController,
                  tabs: [
                    CustomTextWidget(
                      text: 'Collected',
                      size: 12.0.sp,
                    ),
                    CustomTextWidget(
                      text: 'Created',
                      size: 12.0.sp,
                    ),
                    CustomTextWidget(
                      text: 'Activity',
                      size: 12.0.sp,
                    ),
                    CustomTextWidget(
                      text: 'Favorited',
                      size: 12.0.sp,
                    ),
                    CustomTextWidget(
                      text: 'Offers Made',
                      size: 12.0.sp,
                    ),
                    CustomTextWidget(
                      text: 'Offers Received',
                      size: 12.0.sp,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ProfileCollectedTabview(
                      data: profileCollectedItems,
                      type: 'collected',
                      showRowButtons: true,
                    ),
                    ProfileCollectedTabview(
                      data: profileCollectedItems,
                      type: 'created',
                      showRowButtons: true,
                    ),
                    ProfileActivityTabview(
                      data: statActivities,
                      showRowButtons: true,
                    ),
                    ProfileCollectedTabview(
                      data: profileFavourites,
                      type: 'created',
                      showRowButtons: false,
                    ),
                    ProfileActivityTabview(
                      data: profileOffersMade,
                      showRowButtons: false,
                    ),
                    ProfileActivityTabview(
                      data: profileOffersReceived,
                      showRowButtons: false,
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
