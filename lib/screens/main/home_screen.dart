// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/data/index.dart';
import 'package:nft_market_place/widgets/custom_button_widget.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentButton = 'Trending'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgPrimary,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: AppLayout.getWidth(32),
            left: AppLayout.getWidth(24),
            right: AppLayout.getWidth(24),
          ),
          child: Column(
            children: [
              SizedBox(height: 2.0.hp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: AppLayout.getHeight(50),
                    child: Stack(
                      children: [
                        Container(
                          width: AppLayout.getWidth(85),
                          padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(8),
                            horizontal: AppLayout.getHeight(14),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/icons/icon__ethereum.png'),
                              CustomTextWidget(
                                text: '26,031',
                                color: Colors.white,
                                size: 12.0.sp,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 15,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getWidth(5),
                            ),
                            decoration: BoxDecoration(
                              color: AppStyles.bgPrimary,
                            ),
                            child: CustomTextWidget(
                              text: 'Balance',
                              color: Colors.white,
                              size: 10.0.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/user__2.png'),
                  ),
                ],
              ),
              SizedBox(height: 2.0.hp),
              Container(
                height: AppLayout.getHeight(40),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeButtons.length,
                  itemBuilder: (_, index) {
                    return CustomButtonWidget(
                      type: 'list',
                      text: homeButtons[index]['title'],
                      width: AppLayout.getWidth(105),
                      height: AppLayout.getHeight(40),
                      onTapHandler: () {
                        setState(() {
                          currentButton.value = homeButtons[index]['title'];
                        });
                      },
                      fontSize: 14.0.sp,
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w400,
                      backgroundColor:
                          homeButtons[index]['title'] == currentButton.value
                              ? AppStyles.bgBlue
                              : AppStyles.bgGrayLight,
                    );
                  },
                ),
              ),
              SizedBox(height: 2.0.hp),
              Container(
                height: AppLayout.getHeight(380),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeNftCards.length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: 65.0.wp,
                      margin: EdgeInsets.only(right: AppLayout.getWidth(15)),
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(16),
                        horizontal: AppLayout.getWidth(22),
                      ),
                      decoration: BoxDecoration(
                        color: AppStyles.bgGrayLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: AppLayout.getHeight(260),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  homeNftCards[index]['image'],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 2.0.hp),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextWidget(
                                text: homeNftCards[index]['title'],
                                color: Colors.white,
                                size: 10.0.sp,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 15,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  SizedBox(width: AppLayout.getWidth(5)),
                                  CustomTextWidget(
                                    text: homeNftCards[index]['time_left'],
                                    color: Colors.white.withOpacity(0.5),
                                    size: 10.0.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 2.0.hp),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage(
                                        homeNftCards[index]['user_avatar']),
                                  ),
                                  SizedBox(width: AppLayout.getWidth(5)),
                                  CustomTextWidget(
                                    text: homeNftCards[index]['user'],
                                    color: Colors.white,
                                    size: 8.0.sp,
                                  ),
                                ],
                              ),
                              Container(
                                width: AppLayout.getWidth(80),
                                padding: EdgeInsets.symmetric(
                                  vertical: AppLayout.getHeight(6),
                                  horizontal: AppLayout.getHeight(10),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppStyles.bgBlue),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                        'assets/icons/icon__ethereum.png'),
                                    CustomTextWidget(
                                      text: '26,031',
                                      color: Colors.white,
                                      size: 12.0.sp,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 5.0.hp),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Trending Collections',
                    color: Colors.white,
                    size: 20.0.sp,
                    weight: FontWeight.bold,
                    alignment: TextAlign.start,
                  ),
                  SizedBox(height: AppLayout.getHeight(16)),
                  Container(
                    width: double.maxFinite,
                    height: AppLayout.getHeight(380),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: trendingCollections.length,
                      itemBuilder: (_, index) {
                        return Container(
                          // width: AppLayout.getWidth(312),
                          height: AppLayout.getHeight(65),
                          margin:
                              EdgeInsets.only(bottom: AppLayout.getWidth(20)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                          trendingCollections[index]
                                              ['user_avatar'],
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          width: AppLayout.getWidth(15),
                                          height: AppLayout.getHeight(15),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Text("${index + 1}"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 2.0.wp),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomTextWidget(
                                        text: trendingCollections[index]
                                            ['title'],
                                        color: Colors.white,
                                        size: 14.0.sp,
                                      ),
                                      // SizedBox(height: 1.0.hp),
                                      CustomTextWidget(
                                        text: trendingCollections[index]
                                            ['user'],
                                        color: Colors.white.withOpacity(0.5),
                                        size: 12.0.sp,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/icon__ethereum.png',
                                      ),
                                      SizedBox(width: AppLayout.getWidth(5)),
                                      CustomTextWidget(
                                        text: trendingCollections[index]
                                            ['price'],
                                        color: Colors.white.withOpacity(0.5),
                                        size: 12.0.sp,
                                      ),
                                    ],
                                  ),
                                  CustomTextWidget(
                                    text: trendingCollections[index]['rate'],
                                    color: trendingCollections[index]
                                                ['rate_type'] ==
                                            'profit'
                                        ? Colors.green.shade600
                                        : Colors.red.shade600,
                                    size: 12.0.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
