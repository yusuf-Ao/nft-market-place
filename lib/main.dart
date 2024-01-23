// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/screens/main/dashboard.dart';
import 'package:nft_market_place/screens/public/connect_wallet_screen.dart';
import 'package:nft_market_place/screens/public/onboarding_screen.dart';
import 'package:nft_market_place/screens/public/setup_profile_screen.dart';
import 'package:nft_market_place/screens/public/start_screen.dart';
import 'package:nft_market_place/screens/public/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppStyles.bgGrayLight.withOpacity(0.8),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NFT market place',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
      getPages: [
        GetPage(name: '/', page: () => OnboardingScreen()),
        GetPage(name: '/start', page: () => StartScreen()),
        GetPage(name: '/connect_wallet', page: () => ConnectWalletScreen()),
        GetPage(name: '/setup_profile', page: () => SetupProfileScreen()),
        GetPage(name: '/welcome', page: () => WelcomeScreen()),
        GetPage(name: '/dashboard', page: () => DashboardScreen()),
      ],
    );
  }
}
