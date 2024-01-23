// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/data/index.dart';
import 'package:nft_market_place/widgets/collection_card.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class SearchCollectionScreen extends StatefulWidget {
  final Map searchCategory;
  const SearchCollectionScreen({
    super.key,
    required this.searchCategory,
  });

  @override
  State<SearchCollectionScreen> createState() => _SearchCollectionScreenState();
}

class _SearchCollectionScreenState extends State<SearchCollectionScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.30),
        child: AppBar(
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
          flexibleSpace: Container(
            width: screenWidth,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.searchCategory['cover_image']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: AppStyles.bgPrimary,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(24)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4.0.hp),
              CustomTextWidget(
                text: widget.searchCategory['title'],
                color: Colors.white,
                size: 30.0.sp,
                weight: FontWeight.bold,
              ),
              SizedBox(height: 1.0.hp),
              CustomTextWidget(
                text: widget.searchCategory['description'],
                color: Colors.white.withOpacity(0.6),
                size: 12.0.sp,
              ),
              SizedBox(height: 4.0.hp),
              CustomTextWidget(
                text: 'Featured Collections',
                color: Colors.white,
                size: 20.0.sp,
              ),
              SizedBox(height: 2.0.hp),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  // runSpacing: 32,
                  children: [
                    for (var item in collections)
                      CollectionCard(collection: item)
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
