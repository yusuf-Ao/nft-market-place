// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/screens/main/home_screen.dart';
import 'package:nft_market_place/screens/main/profile_screen.dart';
import 'package:nft_market_place/screens/main/search_screen.dart';
import 'package:nft_market_place/screens/main/stats_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentPage = 0;

  List screens = [
    HomeScreen(),
    SearchScreen(),
    StatsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            currentPage = value;
          });
        },
        backgroundColor: AppStyles.bgGrayLight,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
        selectedItemColor: AppStyles.bgBlue,
        unselectedItemColor: Colors.white,
        elevation: 10.0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/icon__home.png'),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/icon__search.png'),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/icon__stats.png'),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/icon__profile.png'),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
