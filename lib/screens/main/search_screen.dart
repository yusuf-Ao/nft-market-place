// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/data/index.dart';
import 'package:nft_market_place/screens/main/pages/search_collection_screen.dart';
import 'package:nft_market_place/widgets/collection_card.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.0.hp),
              CustomTextWidget(
                text: 'Search',
                color: Colors.white,
                size: 30.0.sp,
                weight: FontWeight.w500,
                alignment: TextAlign.start,
              ),
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
                    hintText: 'Search your nft',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 5.0.hp),
              CustomTextWidget(
                text: 'Categories',
                color: Colors.white,
                size: 20.0.sp,
                weight: FontWeight.w500,
                alignment: TextAlign.start,
              ),
              SizedBox(height: 2.0.hp),
              Container(
                height: AppLayout.getHeight(96),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: searchCategories.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          () => SearchCollectionScreen(
                            searchCategory: searchCategories[index],
                          ),
                        );
                      },
                      child: Container(
                        width: AppLayout.getWidth(130),
                        height: AppLayout.getHeight(96),
                        margin: EdgeInsets.only(right: AppLayout.getWidth(10)),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(searchCategories[index]['image']),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomTextWidget(
                            text: searchCategories[index]['title'],
                            color: Colors.white,
                            size: 10.0.sp,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 5.0.hp),
              CustomTextWidget(
                text: 'Featured Collections',
                color: Colors.white,
                size: 20.0.sp,
                weight: FontWeight.w500,
                alignment: TextAlign.start,
              ),
              SizedBox(height: 2.0.hp),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                // runSpacing: 32,
                children: [
                  for (var item in collections) CollectionCard(collection: item)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
