// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class CollectionCard extends StatelessWidget {
  final Map collection;
  const CollectionCard({
    super.key,
    required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0.wp,
      height: 25.0.hp,
      margin: EdgeInsets.only(
        right: 3.8.wp,
        bottom: 4.0.hp,
      ),
      decoration: BoxDecoration(
        color: AppStyles.bgGrayLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(80),
            child: Stack(
              children: [
                Container(
                  width: 40.0.wp,
                  height: AppLayout.getHeight(60),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        collection['cover_image'],
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(collection['image']),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 1.0.hp),
          Center(
            child: CustomTextWidget(
              text: collection['user'],
              color: Colors.white.withOpacity(0.6),
              size: 12.0.sp,
            ),
          ),
          SizedBox(height: 2.0.hp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: 'Items',
                      color: Colors.white.withOpacity(0.6),
                      size: 12.0.sp,
                    ),
                    CustomTextWidget(
                      text: collection['items'],
                      color: Colors.white,
                      size: 12.0.sp,
                    )
                  ],
                ),
                Column(
                  children: [
                    CustomTextWidget(
                      text: 'Owners',
                      color: Colors.white.withOpacity(0.6),
                      size: 12.0.sp,
                    ),
                    CustomTextWidget(
                      text: collection['items'],
                      color: Colors.white,
                      size: 12.0.sp,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
