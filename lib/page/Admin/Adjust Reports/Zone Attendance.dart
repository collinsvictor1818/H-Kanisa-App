import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Admin.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/page/Setup_Page.dart';
import 'package:responsive_dashboard/pallete.dart';

import '../../../component/CustomAppBar.dart';
import '../../../component/ListBuilder.dart';
import '../../../component/navigatormenu.dart';
import '../../../dashboard.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'adjustReports',
      color: AppColor.whiteHK,
      theme: ThemeData(primarySwatch: AppColor.colorHK),
      home: ZoneAttendance(),
    );

class ZoneAttendance extends StatefulWidget {
  @override
  State<ZoneAttendance> createState() => _ZoneAttendance();
}

class _ZoneAttendance extends State<ZoneAttendance> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Zone Attendance",
          onClickedHome: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Dashboard()));
          },
          onClickedBack: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Admin()));
          }),
    );
  }
}
