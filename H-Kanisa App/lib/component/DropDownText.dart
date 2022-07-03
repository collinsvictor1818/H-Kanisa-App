import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:responsive_dashboard/component/CustomTextField.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/pallete.dart';
import 'package:responsive_dashboard/pallete.dart';
import 'package:responsive_dashboard/style/colors.dart';

import '../../../component/CustomAppBar.dart';
import '../../../component/DropDown.dart';
import '../../../component/constants.dart';
import '../../../component/navigatormenu.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Common_Items',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      home: DropTextField(),
    );

class DropTextField extends StatefulWidget {
  const DropTextField({
    Key key,
  }) : super(key: key);

  @override
  _DropTextFieldState createState() => _DropTextFieldState();
}

class _DropTextFieldState extends State<DropTextField> {
  /// This is list of city which will pass to the drop down.
  final List<SelectedListItem> _Gender = [
    SelectedListItem(false, "Male", value: "Male"),
    SelectedListItem(false, "Female", value: "Female"),
  ];

  /// This is register text field controllers.

  final TextEditingController _genderTextEditingController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _genderTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: _mainBody(),
      ),
    );
  }

  /// This is Main Body widget.
  Widget _mainBody() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            kRegister,
            style: TextStyle(
              fontSize: 34.0,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextDropDown(
            textEditingController: _genderTextEditingController,
            title: kGender,
            hint: kChooseYourCity,
            isItemSelected: true,
            gender: _Gender,
          ),
          const SizedBox(
            height: 15.0,
          ),
          _AppElevatedButton(),
        ],
      ),
    );
  }
}

/// This is Common App textfiled class.
class TextDropDown extends StatefulWidget {
  TextEditingController textEditingController = TextEditingController();
  final String title;
  final String hint;
  final enabledBorder;
  final bool isItemSelected;
  final List<SelectedListItem> gender;
  VoidCallback onTap;
  TextDropDown({
    this.textEditingController,
    this.title,
    this.hint,
    this.enabledBorder,
    this.isItemSelected,
    this.gender,
    this.onTap,
  });

  _TextDropDownState createState() => _TextDropDownState();
}

class _TextDropDownState extends State<TextDropDown> {
  TextEditingController _searchTextEditingController = TextEditingController();

  /// This is on text changed method which will display on city text field on changed.
  void onTextFieldTap() {
    DropDownState(
      DropDown(
        submitButtonText: kDone,
        submitButtonColor: AppColor.greenHK,
        searchHintText: kSearch,
        bottomSheetTitle: kgender,
        searchBackgroundColor: Colors.black12,
        dataList: widget.gender ?? [],
        selectedItems: (List<dynamic> selectedList) {
          showSnackBar(selectedList.toString());
        },
        selectedItem: (String selected) {
          showSnackBar(selected);
          widget.textEditingController.text = selected;
        },
        enableMultipleSelection: false,
        searchController: _searchTextEditingController,
      ),
    ).showModal(context);
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          maxLines: 4,
          minLines: 1,
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w300),
          controller: widget.textEditingController,
          cursorColor: Colors.black,
          onTap: widget.isItemSelected
              ? () {
                  FocusScope.of(context).unfocus();
                  onTextFieldTap();
                }
              : null,
          decoration: InputDecoration(
            labelText: 'First Name',
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: BorderSide(
                color: AppColor.midGreyHk,
                width: 1.0,
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
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}

/// This is common class for 'REGISTER' elevated button.
class _AppElevatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          kREGISTER,
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: "Poppins",
              fontWeight: FontWeight.normal),
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColor.greenHK,
          textStyle: const TextStyle(
              fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

Widget FormText({
  maxLines: 4,
  minLines: 1,
  final TextEditingController genderController,
  final TextEditingController churchController,
  final TextEditingController departmentController,
  final TextEditingController cellController,
  String name,
  String hint,
  final onDrop,
  List<SelectedListItem> list, 
  isItemSelected,
})

 {
  return TextFormField(
    style: TextStyle(
        fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w300),
    decoration: InputDecoration(
      labelText: name,
      hintText: hint,
      isDense: true,
      contentPadding: EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: BorderSide(
          color: AppColor.midGreyHk,
          width: 1.0,
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
    onTap: onDrop,
  );
}/*
Widget DropAction({

}){
  

   return DropDownState(
      DropDown(
        submitButtonText: kDone,
        submitButtonColor: AppColor.greenHK,
        searchHintText: kSearch,
        bottomSheetTitle: kgender,
        searchBackgroundColor: Colors.black12,
        dataList: widget.gender ?? [],
        selectedItems: (List<dynamic> selectedList) {
          showSnackBar(selectedList.toString());
        },
        selectedItem: (String selected) {
          showSnackBar(selected);
          widget.textEditingController.text = selected;
        },
        enableMultipleSelection: false,
        searchController: _searchTextEditingController,
      ),
    ).showModal(context);
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

*/