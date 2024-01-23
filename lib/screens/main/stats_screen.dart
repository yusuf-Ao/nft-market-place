// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/screens/main/pages/stats_activity_screen.dart';
import 'package:nft_market_place/screens/main/pages/stats_rankings_screen.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.0.hp),
              CustomTextWidget(
                text: 'Stats',
                color: Colors.white,
                size: 30.0.sp,
                weight: FontWeight.bold,
                alignment: TextAlign.start,
              ),
              SizedBox(height: 2.0.hp),
              TabBar(
                controller: tabController,
                tabs: [
                  CustomTextWidget(
                    text: 'Rankings',
                    color: Colors.white,
                    size: 16.0.sp,
                    weight: FontWeight.w600,
                  ),
                  CustomTextWidget(
                    text: 'Activity',
                    color: Colors.white,
                    size: 16.0.sp,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.78,
                // color: Colors.amber,
                width: 100.0.wp,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    StatsRankingsScreen(),
                    StatsActivityScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
