// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/data/index.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class StatsRankingsScreen extends StatefulWidget {
  const StatsRankingsScreen({super.key});

  @override
  State<StatsRankingsScreen> createState() => _StatsRankingsScreenState();
}

class _StatsRankingsScreenState extends State<StatsRankingsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 2.0.hp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width: 40.0.wp,
                padding: EdgeInsets.symmetric(
                  vertical: 1.0.hp,
                  horizontal: 4.0.wp,
                ),
                decoration: BoxDecoration(
                  color: AppStyles.bgGrayLight,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: 'All Categories',
                      color: Colors.white.withOpacity(0.6),
                      size: 14.0.sp,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 20,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ],
                ),
              ),
              Container(
                // width: 40.0.wp,
                padding: EdgeInsets.symmetric(
                  vertical: 1.0.hp,
                  horizontal: 4.0.wp,
                ),
                decoration: BoxDecoration(
                  color: AppStyles.bgGrayLight,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: 'All Chains',
                      color: Colors.white.withOpacity(0.6),
                      size: 14.0.sp,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 20,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 2.0.hp),
          Container(
            height: screenHeight * 0.8,
            child: ListView.builder(
              itemCount: statRankings.length,
              itemBuilder: (_, index) {
                return Container(
                  height: AppLayout.getHeight(140),
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(10),
                    horizontal: AppLayout.getWidth(12),
                  ),
                  margin: index == statRankings.length - 1
                      ? EdgeInsets.only(bottom: AppLayout.getHeight(120))
                      : EdgeInsets.only(bottom: AppLayout.getHeight(20)),
                  decoration: BoxDecoration(
                    color: AppStyles.bgGrayLight,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomTextWidget(
                                text: statRankings[index]['id'],
                                color: Colors.white,
                              ),
                              SizedBox(width: 2.0.wp),
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  statRankings[index]['image'],
                                ),
                              ),
                              SizedBox(width: 2.0.wp),
                              CustomTextWidget(
                                text: statRankings[index]['title'],
                                color: Colors.white,
                                size: 10.0.sp,
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
                                  SizedBox(width: 1.0.wp),
                                  CustomTextWidget(
                                    text: statRankings[index]['price'],
                                    color: Colors.white,
                                    size: 10.0.sp,
                                  ),
                                ],
                              ),
                              CustomTextWidget(
                                text: statRankings[index]['rate'],
                                color: Colors.green,
                                size: 10.0.sp,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 2.0.hp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CustomTextWidget(
                                text: '24h%',
                                color: Colors.white.withOpacity(0.6),
                                size: 10.0.sp,
                              ),
                              CustomTextWidget(
                                text: statRankings[index]['daily_rate'],
                                color: statRankings[index]['daily_rate_type'] ==
                                        'positive'
                                    ? Colors.green
                                    : Colors.red.shade400,
                                size: 10.0.sp,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomTextWidget(
                                text: 'Floor Price',
                                color: Colors.white.withOpacity(0.6),
                                size: 10.0.sp,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/icon__ethereum.png',
                                    width: 2.0.wp,
                                  ),
                                  SizedBox(width: 1.0.wp),
                                  CustomTextWidget(
                                    text: statRankings[index]['floor_price'],
                                    color: Colors.white,
                                    size: 10.0.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomTextWidget(
                                text: 'Owners',
                                color: Colors.white.withOpacity(0.6),
                                size: 10.0.sp,
                              ),
                              CustomTextWidget(
                                text: statRankings[index]['owners'],
                                color: Colors.white,
                                size: 10.0.sp,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomTextWidget(
                                text: 'Items',
                                color: Colors.white.withOpacity(0.6),
                                size: 10.0.sp,
                              ),
                              CustomTextWidget(
                                text: statRankings[index]['items'],
                                color: Colors.white,
                                size: 10.0.sp,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
