// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';
import 'package:nft_market_place/widgets/dropdown_row_buttons.dart';

class ProfileCollectedTabview extends StatefulWidget {
  final List data;
  final String type;
  final bool showRowButtons;
  const ProfileCollectedTabview({
    super.key,
    required this.data,
    required this.type,
    required this.showRowButtons,
  });

  @override
  State<ProfileCollectedTabview> createState() =>
      _ProfileCollectedTabviewState();
}

class _ProfileCollectedTabviewState extends State<ProfileCollectedTabview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: AppLayout.getWidth(400),
        height: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 2.0.hp),
            widget.showRowButtons
                ? ProfileTabviewRowButtons(
                    leftText:
                        widget.type == 'collected' ? 'All Categories' : 'Items',
                    rightText: 'Upload',
                  )
                : Container(),
            SizedBox(height: 2.0.hp),
            Container(
              height: double.maxFinite,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 8.0.wp,
                // runSpacing: 2,
                children: [
                  for (var item in widget.data)
                    Container(
                      margin: EdgeInsets.only(bottom: 4.0.hp),
                      width: 40.0.wp,
                      height: 34.0.hp,
                      padding: EdgeInsets.all(3.0.wp),
                      decoration: BoxDecoration(
                        color: AppStyles.bgGrayLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20.0.hp,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(item['image']),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 1.0.hp),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextWidget(
                                text: item['user'],
                                color: Colors.white.withOpacity(0.6),
                                size: 8.0.sp,
                              ),
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.heart,
                                    size: 15,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  SizedBox(width: 1.0.wp),
                                  CustomTextWidget(
                                    text: item['likes'],
                                    color: Colors.white.withOpacity(0.6),
                                    size: 8.0.sp,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 1.0.hp),
                          CustomTextWidget(
                            text: item['title'],
                            color: Colors.white.withOpacity(0.6),
                            size: 10.0.sp,
                          ),
                          SizedBox(height: 1.0.hp),
                          Container(
                            width: AppLayout.getWidth(70),
                            padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(6),
                              horizontal: AppLayout.getHeight(10),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppStyles.bgBlue),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/icons/icon__ethereum.png',
                                  width: 2.0.wp,
                                ),
                                CustomTextWidget(
                                  text: '26,031',
                                  color: Colors.white,
                                  size: 10.0.sp,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
