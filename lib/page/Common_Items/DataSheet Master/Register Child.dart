import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/Date%20Picker.dart';
import 'package:responsive_dashboard/component/DropDown.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/pallete.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';

import '../../../component/CustomAppBar.dart';
import '../../../component/navigatormenu.dart';

class regChild extends StatefulWidget {
  @override
  RegChild createState() => RegChild();
}

TextEditingController _date = TextEditingController();

DateTime dateTime = DateTime(3000, 2, 1);

final List<SelectedListItem> _Gender = [
  SelectedListItem(false, "Male", value: "M"),
  SelectedListItem(false, "Female", value: "F"),
];

class RegChild extends State<regChild> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;



final List<String> genderItems = [
  'Male',
  'Female',
];

String selectedValue;

final _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                hintText: 'Enter Your Full Name.',
                hintStyle: const TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 30),

            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
               
              },
              child: const Text('Submit Button'),
            ),
          ],
        ),
      ),
    ),
  );
}}