// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/data/index.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class StatsActivityScreen extends StatefulWidget {
  const StatsActivityScreen({super.key});

  @override
  State<StatsActivityScreen> createState() => _StatsActivityScreenState();
}

class _StatsActivityScreenState extends State<StatsActivityScreen> {
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
                      text: 'All Event Type',
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
              itemCount: statActivities.length,
              itemBuilder: (_, index) {
                return Container(
                  height: 19.0.hp,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(10),
                    horizontal: AppLayout.getWidth(12),
                  ),
                  margin: index == statActivities.length - 1
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
                              Container(
                                width: AppLayout.getWidth(82),
                                height: AppLayout.getHeight(82),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      statActivities[index]['image'],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.0.wp),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextWidget(
                                    text: statActivities[index]['user'],
                                    color: Colors.white.withOpacity(0.6),
                                    size: 12.0.sp,
                                  ),
                                  CustomTextWidget(
                                    text: statActivities[index]['title'],
                                    color: Colors.white,
                                    size: 12.0.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomTextWidget(
                                text: 'Sale',
                                color: Colors.green,
                                size: 12.0.sp,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/icon__ethereum.png',
                                    width: 2.4.wp,
                                  ),
                                  SizedBox(width: 1.0.wp),
                                  CustomTextWidget(
                                    text: statActivities[index]['price'],
                                    color: Colors.white,
                                    size: 12.0.sp,
                                  ),
                                ],
                              ),
                              CustomTextWidget(
                                text: statActivities[index]['time'],
                                color: Colors.white.withOpacity(0.6),
                                size: 12.0.sp,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 2.0.hp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CustomTextWidget(
                                text: 'USD Price',
                                color: Colors.white.withOpacity(0.6),
                                size: 12.0.sp,
                              ),
                              CustomTextWidget(
                                text: statActivities[index]['usd_price'],
                                color: Colors.white,
                                size: 12.0.sp,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomTextWidget(
                                text: 'Quantity',
                                color: Colors.white.withOpacity(0.6),
                                size: 12.0.sp,
                              ),
                              CustomTextWidget(
                                text: statActivities[index]['quantity'],
                                color: Colors.white,
                                size: 12.0.sp,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomTextWidget(
                                text: 'From',
                                color: Colors.white.withOpacity(0.6),
                                size: 12.0.sp,
                              ),
                              CustomTextWidget(
                                text: statActivities[index]['from'],
                                color: AppStyles.bgBlue,
                                size: 12.0.sp,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomTextWidget(
                                text: 'To',
                                color: Colors.white.withOpacity(0.6),
                                size: 12.0.sp,
                              ),
                              CustomTextWidget(
                                text: statActivities[index]['to'],
                                color: AppStyles.bgBlue,
                                size: 12.0.sp,
                              ),
                            ],
                          ),
                        ],
                      )
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
