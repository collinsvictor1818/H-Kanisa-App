import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/pallete.dart';

import '../../../component/CustomAppBar.dart';
import '../../../component/navigatormenu.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Common_Items',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      home: DataSheet(),
    );

class DataSheet extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: CustomAppBar(
            title: "Drop Child",
            onClickedHome: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => Dashboard())));
            },
            onClickedBack: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => IconMenu())));
            }),
        body: ListView(children: <Widget>[
          ListTile(
            leading: Icon(Icons.dashboard_customize_rounded),
            title: Text('Register Visitor'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Record Temperature'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Register Member'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('View Members'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Register Child'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Drop Child'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Pick Child'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          ListTile(
            leading: Icon(Icons.add_box_outlined),
            title: Text('Visitation'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
        ]),
      ),
    );
  }
}
