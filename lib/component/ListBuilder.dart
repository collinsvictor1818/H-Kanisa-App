import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import '../pallete.dart';
import 'navigatormenu.dart';

class buildList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Common Items',
      theme: new ThemeData(primaryColor: AppColor.whiteHK),
    );
  }
}

Widget BuildList({
  String title,
  String desc,
  IconData icon,
  VoidCallback onClicked,
}) {
  final space = EdgeInsets.all(15);
  return Container(
    // padding: EdgeInsets.symmetric(horizontal: 15),
    child: PhysicalModel(
      clipBehavior: Clip.none,
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      child: Center(
        child: Container(
          height: 60,
          child: ListTile(
              dense: true,

              leading: Icon(icon, color: AppColor.midGreyHk),
              title: Transform.translate(
                  offset: Offset(-20, 0),
                  child: Text(
                    title ?? "",
                    style: TextStyle(
                        color: AppColor.midGreyHk,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  )),
              subtitle: Text(
                desc ?? "",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: AppColor.midGreyHk,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
              trailing:
                  Icon(Icons.chevron_right_rounded, color: AppColor.midGreyHk),
              onTap: onClicked),
        ),
      ),
    ),
    padding: EdgeInsets.symmetric(vertical: 10)
        .add(EdgeInsets.symmetric(horizontal: 18)),
  );
}
