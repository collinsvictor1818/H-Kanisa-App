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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Registor Visitors",
          onClickedHome: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => Dashboard())));
          },
          onClickedBack: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => IconMenu())));
          }),
      backgroundColor: AppColor.whiteHK,
      body: Theme(
        data: ThemeData(
          canvasColor: Colors.white,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: AppColor.greenHK,
                background: AppColor.greyHK,
                secondary: AppColor.greenHK,
              ),
        ),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Stepper(
                      type: stepperType,
                      physics: ScrollPhysics(),
                      currentStep: _currentStep,
                      onStepTapped: (step) => tapped(step),
                      onStepContinue: continued,
                      onStepCancel: cancel,
                      steps: <Step>[
                        Step(
                          title: new Text(
                            'Personal details',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                          content: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 3)),
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'First Name',
                                  hintText: 'Enter First Name',
                                  isDense: true,
                                   contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Second Name',
                                  hintText: 'Enter Second Name',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Last Name',
                                  hintText: 'Enter Last Name',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              DatePicker(),
                              /*  TextFormField(
                                controller: _date,
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  icon: Icon(Icons.calendar_month_rounded
                                  ),
                                  labelText: 'Date of Birth',
                                  hintText: 'Date of Birth',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                                onTap: () async {
                                  DateTime pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2101));

                                  if (pickedDate != null) {
                                    setState(() {
                                      _date.text =
                                          DateFormat('MM-dd').format(pickedDate);
                                    });
                                  }
                                },
                              ),*/

                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              DropDownWidget(
                                Drop: DropDown(
                                  buttonText: 'Gender',
                                  bottomSheetTitle: 'Enter your Gender',
                                  submitButtonColor: AppColor.greenHK,
                                  submitButtonText: 'Submit',
                                  searchHintText: 'Search',
                                  // dataList: widget.gender ?? []
                                ),
                              ),
                            ],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 0
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                        Step(
                          title: new Text('Contact Details'),
                          content: Column(
                            children: <Widget>[
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  hintText: 'Enter Phone Number',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                            ],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 1
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                        Step(
                          title: new Text('Church'),
                          content: Column(
                            children: <Widget>[
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Church',
                                  hintText: 'Enter Church',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Branch',
                                  hintText: 'Enter Branch',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Zone',
                                  hintText: 'Enter Zone',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Cell Group',
                                  hintText: 'Enter Harvest/Squad/Love Group',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Department',
                                  hintText: 'Enter Department',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                            ],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 1
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                        Step(
                          title: new Text('Location'),
                          content: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8)),
                              TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  labelText: 'Location',
                                  hintText: 'Enter your Location',
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
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
                            ],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep >= 2
                              ? StepState.complete
                              : StepState.disabled,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.list),
        onPressed: switchStepsType,
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.horizontal
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
