import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                  text: 'Dashboard', size: 25, fontWeight: FontWeight.w800),
              PrimaryText(
                text: 'HFC\nHead Quarters',
                size: 16,
                fontWeight: FontWeight.w300,
                color: AppColors.greyHK,
              )
            ]),
      ),
      Spacer(
        flex: 1,
      ),
      Expanded(
        flex: Responsive.isDesktop(context) ? 1 : 3,
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding: EdgeInsets.only(left: 40.0, right: 5),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.white),
              ),
              prefixIcon: Icon(Icons.search, color: AppColors.redHK),
              hintText: 'Search',
              hintStyle: TextStyle(
                  color: AppColors.redHK,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  fontSize: 14)),
        ),
      ),
    ]);
  }
}
