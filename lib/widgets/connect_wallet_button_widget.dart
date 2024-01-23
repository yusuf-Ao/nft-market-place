import 'package:flutter/material.dart';
import 'package:nft_market_place/config/app_config.dart';
import 'package:nft_market_place/widgets/custom_text_widget.dart';

class ConnectWalletButton extends StatelessWidget {
  final String image;
  final String title;
  final Function onTapHandler;
  const ConnectWalletButton({
    super.key,
    required this.image,
    required this.title,
    required this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapHandler();
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12),
          horizontal: AppLayout.getWidth(24),
        ),
        decoration: BoxDecoration(
          color: AppStyles.bgGrayLight,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(width: 4.0.wp),
            CustomTextWidget(
              text: title,
              color: Colors.white,
              size: 14.0.sp,
            ),
          ],
        ),
      ),
    );
  }
}
