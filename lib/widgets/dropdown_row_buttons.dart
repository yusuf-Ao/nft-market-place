import 'package:flutter/material.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/widgets/custom_button_widget.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class ProfileTabviewRowButtons extends StatelessWidget {
  final String leftText;
  final String rightText;
  const ProfileTabviewRowButtons({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
                text: leftText,
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
        CustomButtonWidget(
          text: rightText,
          width: 25.0.wp,
          height: AppLayout.getHeight(38),
          onTapHandler: () {},
          fontSize: 14.0.sp,
          fontColor: Colors.white,
          fontWeight: FontWeight.w400,
          backgroundColor: AppStyles.bgBlue,
        ),
      ],
    );
  }
}
