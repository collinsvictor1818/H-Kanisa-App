// ignore_for_file: missing_required_param

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/FabPopover.dart';
import 'package:responsive_dashboard/component/ListBuilder.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/BottomModalSheet.dart';

import 'package:responsive_dashboard/pallete.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../component/CustomAppBar.dart';
import '../../../dashboard.dart';
import '../DataSheet_master.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Common_Items',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: AppColor.colorHK,
          scaffoldBackgroundColor: Colors.white),
      home: regMember(),
    );

///
///
///
final List<String> genderItems = [
  'Male',
  'Female',
];

///
///
///
///
final List<String> cell = [
  'Isaiah 60:22',
  'Eliazar',
];

///
///
///
final List<String> branch = [
  'HQ-Ongata Rongai',
  'Kitengela',
  'Naivasha',
  'Kware'
];

///
///
///
final List<String> church = ['TGL', 'ARK', 'HFC'];

///
///
final List<String> departments = ['Creative Arts', 'Media', 'Praise & Worship'];

///
///
String selectedValue;

@override

///
///
///
class regMember extends StatelessWidget {
  get context => null;
  int currentStep = 0;
  final firstName = TextEditingController();
  final secondName = TextEditingController();
  final lastName = TextEditingController();
  final birthday = TextEditingController();
  final gender = TextEditingController();
  final phoneNumber = TextEditingController();
  final location = TextEditingController();

  final branch = TextEditingController();

  ///
  ///
  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: AppColor.whiteHK,
      /*  appBar: CustomAppBar(
          title: "Registor Member",
          onClickedHome: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => Dashboard())));
          },
          onClickedBack: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => DataSheet())));
          }),*/
      body: Theme(
          data: ThemeData(
            fontFamily: "Poppins",
            canvasColor: Colors.white,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: AppColor.greenHK,
                  background: AppColor.greyHK,
                  secondary: AppColor.greenHK,
                ),
          ),
          child: Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0)
                    .add(EdgeInsets.only(top: 8))
                    .add(EdgeInsets.symmetric(horizontal: 15)),
                child: Column(
                  children: <Widget>[
                    ///
                    ///
                    Text("Register Members",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),

                    TextFormField(
                      controller: firstName,
                      maxLines: 7,
                      cursorColor: AppColor.greenHK,
                      minLines: 1,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        focusColor: AppColor.greenHK,
                        prefixIcon:
                            Icon(Icons.person, color: AppColor.midGreyHk),
                        isDense: true,
                        ////
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),

                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    TextFormField(
                      controller: secondName,
                      maxLines: 7,
                      cursorColor: AppColor.greenHK,
                      minLines: 1,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        labelText: 'Second Name',
                        focusColor: AppColor.greenHK,
                        prefixIcon:
                            Icon(Icons.person, color: AppColor.midGreyHk),
                        isDense: true,
                        ////
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),
                      ),
                      onTap: () {
                        ;
                      },
                    ),

                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    TextFormField(
                      controller: lastName,
                      maxLines: 5,
                      cursorColor: AppColor.greenHK,
                      minLines: 1,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        focusColor: AppColor.greenHK,
                        prefixIcon:
                            Icon(Icons.person, color: AppColor.midGreyHk),
                        isDense: true,
                        ////
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    TextFormField(
                        controller: phoneNumber,
                        maxLines: 5,
                        cursorColor: AppColor.greenHK,
                        minLines: 1,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          focusColor: AppColor.greenHK,
                          prefixIcon: Icon(Icons.phone_iphone,
                              color: AppColor.midGreyHk),
                          isDense: true,
                          ////
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide(
                              color: AppColor.offWhiteHK,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: AppColor.greenHK,
                              width: 2.5,
                            ),
                          ),
                        ),
                        onTap: () {}),

                    ///
                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    TextFormField(
                      controller: birthday,
                      maxLines: 7,
                      cursorColor: AppColor.greenHK,
                      minLines: 1,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        labelText: 'Birthday',
                        focusColor: AppColor.greenHK,
                        prefixIcon:
                            Icon(Icons.location_on, color: AppColor.midGreyHk),
                        suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined,
                            color: AppColor.midGreyHk),
                        isDense: true,
                        ////
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),

                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    DropdownButtonFormField2(
                      decoration: InputDecoration(
                        //Add isDense true and zero Padding.
                        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                        isDense: true,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        //Add more decoration as you want here
                        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                      ),
                      isExpanded: true,
                      hint: const Text(
                        'Select Your Gender',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins",
                        ),
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 30,
                      buttonHeight: 48,
                      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      items: genderItems
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: AppColor.greyHK,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select gender.';
                        }
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                    ),

                    ///
                    ///
                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    ///
                    ///
                    DropdownButtonFormField2(
                      decoration: InputDecoration(
                        //Add isDense true and zero Padding.
                        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                        isDense: true,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        //Add more decoration as you want here
                        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                      ),
                      isExpanded: true,
                      hint: const Text(
                        'Select Your Department',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins",
                        ),
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 30,
                      buttonHeight: 48,
                      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      items: departments
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: AppColor.greyHK,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select your department.';
                        }
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                    ),

                    ///
                    ///
                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    ///
                    ///
                    ///Cell groups
                    DropdownButtonFormField2(
                      decoration: InputDecoration(
                        //Add isDense true and zero Padding.
                        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                        isDense: true,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        //Add more decoration as you want here
                        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                      ),
                      isExpanded: true,
                      hint: const Text(
                        'Select Your Cell',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins",
                        ),
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 30,
                      buttonHeight: 48,
                      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      items: cell
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: AppColor.greyHK,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select your Cell.';
                        }
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                    ),

                    ///
                    ///
                    ///
                    ///
                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    ///
                    ///
                    ///
                    ///Cell groups
                    DropdownButtonFormField2(
                      decoration: InputDecoration(
                        //Add isDense true and zero Padding.
                        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                        isDense: true,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        //Add more decoration as you want here
                        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                      ),
                      isExpanded: true,
                      hint: const Text(
                        'Select Church',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins",
                        ),
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 30,
                      buttonHeight: 48,
                      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      items: church
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: AppColor.greyHK,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select your Church.';
                        }
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                    ),

                    ///
                    ///
                    ///
                    ///
                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    ///
                    ///
                    ///
                    ///
                    ///
//////Cell groups
                    DropdownButtonFormField2(
                      decoration: InputDecoration(
                        //Add isDense true and zero Padding.
                        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                        isDense: true,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),

                        //Add more decoration as you want here
                        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                      ),
                      isExpanded: true,
                      hint: const Text(
                        'Select Branch',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins",
                        ),
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 30,
                      buttonHeight: 48,
                      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      items: cell
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: AppColor.greyHK,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select your Branch.';
                        }
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                    ),

                    ///
                    ///
                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                    ///
                    ///
                    TextFormField(
                      controller: location,
                      maxLines: 7,
                      cursorColor: AppColor.greenHK,
                      minLines: 1,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        labelText: 'Location',
                        focusColor: AppColor.greenHK,
                        prefixIcon:
                            Icon(Icons.location_on, color: AppColor.midGreyHk),
                        suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined,
                            color: AppColor.midGreyHk),
                        isDense: true,
                        ////
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: AppColor.offWhiteHK,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColor.greenHK,
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),

                    ///
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                    ///
                  ],
                ),
              ),
            ),
          )),
    ));

    ///
    ///

    ///
    ///
  }
}
