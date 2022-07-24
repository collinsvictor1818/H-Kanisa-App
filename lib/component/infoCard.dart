import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class InfoCard extends StatelessWidget {
  final String image;
  final String label;
  final String number;
  VoidCallback onClicked;

  InfoCard({this.image, this.label, this.number, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth: Responsive.isDesktop(context)
              ? 200
              : SizeConfig.screenWidth / 2 - 40),
      padding: EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 15,
          right: Responsive.isMobile(context) ? 20 : 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, width: 45),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          PrimaryText(text: label, color: AppColors.greyHK, size: 16),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          PrimaryText(
            text: number,
            size: 30,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
      
    );
  }
}
