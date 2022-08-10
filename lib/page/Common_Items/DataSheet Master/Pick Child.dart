import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/FormText.dart';
import 'package:responsive_dashboard/component/TitleAppBar.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Drop%20Child.dart';

//import '../pallete.dart';

class PickChild extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.bottomLeft,
                  child: FormTitle(
                    title: "Pick Child",
                  )),
              SingleChildScrollView(
                child: Column(
                  children: [
                    FormText(
                      text: "First Name",
                    ),
                    FormText(text: "Second Name"),
                    FormText(text: "Last Name"),
                    FormText(text: "Phone Number"),
                    FormText(text: "Birthday"),
                    FormText(
                        text: "Cell", suffix: Icons.arrow_drop_down_rounded),
                    FormText(
                        text: "Zone", suffix: Icons.arrow_drop_down_rounded),
                    FormText(
                        text: "Church", suffix: Icons.arrow_drop_down_rounded),
                    FormText(
                        text: "Branch", suffix: Icons.arrow_drop_down_rounded),
                    FormText(text: "Location"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
