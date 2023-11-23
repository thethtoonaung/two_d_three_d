import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/intl.dart';
import 'package:two_d_three_d/custom_text_form_field.dart';

class SendOrUpdateData extends StatefulWidget {
  final int? zeroZero;
  final int? zeroOne;
  final int? zeroTwo;
  final int? zeroThree;
  final int? zeroFour;
  final int? zeroFive;
  final int? zeroSixth;
  final int? zeroSeven;
  final int? zeroEight;
  final int? zeroNine;
  final int? ten;
  final int? eleven;
  final int? twelve;
  final int? thirteen;
  final int? fourteen;
  final int? fifteen;
  final int? sixteen;
  final int? seventeen;
  final int? eighteen;
  final int? nineteen;
  final int? twenty;
  final int? twentyOne;
  final int? twentyTwo;
  final int? twentyThree;
  final int? twentyFour;
  final int? twentyFive;
  final int? twentySix;
  final int? twentySeven;
  final int? twentyEight;
  final int? twentyNine;
  final int? thirty;
  final int? thirtyOne;
  final int? thirtyTwo;
  final int? thirtyThree;
  final int? thirtyFour;
  final int? thirtyFive;
  final int? thirtySix;
  final int? thirtySeven;
  final int? thirtyEight;
  final int? thirtyNine;
  final int? fourty;
  final int? fourtyOne;
  final int? fourtyTwo;
  final int? fourtyThree;
  final int? fourtyFour;
  final int? fourtyFive;
  final int? fourtySix;
  final int? fourtySeven;
  final int? fourtyEight;
  final int? fourtyNine;
  final int? fifty;
  final int? fiftyOne;
  final int? fiftyTwo;
  final int? fiftyThree;
  final int? fiftyFour;
  final int? fiftyFive;
  final int? fiftySix;
  final int? fiftySeven;
  final int? fiftyEight;
  final int? fiftyNine;
  final int? sixty;
  final int? sixtyOne;
  final int? sixtyTwo;
  final int? sixtyThree;
  final int? sixtyFour;
  final int? sixtyFive;
  final int? sixtySix;
  final int? sixtySeven;
  final int? sixtyEight;
  final int? sixtyNine;
  final int? seventy;
  final int? seventyOne;
  final int? seventyTwo;
  final int? seventyThree;
  final int? seventyFour;
  final int? seventyFive;
  final int? seventySix;
  final int? seventySeven;
  final int? seventyEight;
  final int? seventyNine;
  final int? eighty;
  final int? eightyOne;
  final int? eightyTwo;
  final int? eightyThree;
  final int? eightyFour;
  final int? eightyFive;
  final int? eightySix;
  final int? eightySeven;
  final int? eightyEight;
  final int? eightyNine;
  final int? ninety;
  final int? ninetyOne;
  final int? ninetyTwo;
  final int? ninetyThree;
  final int? ninetyFour;
  final int? ninetyFive;
  final int? ninetySix;
  final int? ninetySeven;
  final int? ninetyEight;
  final int? ninetyNine;

  final String id;
  final String createdDate;
  final String? note;
  const SendOrUpdateData(
      {this.zeroZero = 0,
      this.zeroOne = 0,
      this.zeroTwo = 0,
      this.zeroThree = 0,
      this.zeroFour = 0,
      this.zeroFive = 0,
      this.zeroSixth = 0,
      this.zeroSeven = 0,
      this.zeroEight = 0,
      this.zeroNine = 0,
      this.ten = 0,
      this.eleven = 0,
      this.twelve = 0,
      this.thirteen = 0,
      this.fourteen = 0,
      this.fifteen = 0,
      this.sixteen = 0,
      this.seventeen = 0,
      this.eighteen = 0,
      this.nineteen = 0,
      this.twenty = 0,
      this.twentyOne = 0,
      this.twentyTwo = 0,
      this.twentyThree = 0,
      this.twentyFour = 0,
      this.twentyFive = 0,
      this.twentySix = 0,
      this.twentySeven = 0,
      this.twentyEight = 0,
      this.twentyNine = 0,
      this.thirty = 0,
      this.thirtyOne = 0,
      this.thirtyTwo = 0,
      this.thirtyThree = 0,
      this.thirtyFour = 0,
      this.thirtyFive = 0,
      this.thirtySix = 0,
      this.thirtySeven = 0,
      this.thirtyEight = 0,
      this.thirtyNine = 0,
      this.fourty = 0,
      this.fourtyOne = 0,
      this.fourtyTwo = 0,
      this.fourtyThree = 0,
      this.fourtyFour = 0,
      this.fourtyFive = 0,
      this.fourtySix = 0,
      this.fourtySeven = 0,
      this.fourtyEight = 0,
      this.fourtyNine = 0,
      this.fifty = 0,
      this.fiftyOne = 0,
      this.fiftyTwo = 0,
      this.fiftyThree = 0,
      this.fiftyFour = 0,
      this.fiftyFive = 0,
      this.fiftySix = 0,
      this.fiftySeven = 0,
      this.fiftyEight = 0,
      this.fiftyNine = 0,
      this.sixty = 0,
      this.sixtyOne = 0,
      this.sixtyTwo = 0,
      this.sixtyThree = 0,
      this.sixtyFour = 0,
      this.sixtyFive = 0,
      this.sixtySix = 0,
      this.sixtySeven = 0,
      this.sixtyEight = 0,
      this.sixtyNine = 0,
      this.seventy = 0,
      this.seventyOne = 0,
      this.seventyTwo = 0,
      this.seventyThree = 0,
      this.seventyFour = 0,
      this.seventyFive = 0,
      this.seventySix = 0,
      this.seventySeven = 0,
      this.seventyEight = 0,
      this.seventyNine = 0,
      this.eighty = 0,
      this.eightyOne = 0,
      this.eightyTwo = 0,
      this.eightyThree = 0,
      this.eightyFour = 0,
      this.eightyFive = 0,
      this.eightySix = 0,
      this.eightySeven = 0,
      this.eightyEight = 0,
      this.eightyNine = 0,
      this.ninety = 0,
      this.ninetyOne = 0,
      this.ninetyTwo = 0,
      this.ninetyThree = 0,
      this.ninetyFour = 0,
      this.ninetyFive = 0,
      this.ninetySix = 0,
      this.ninetySeven = 0,
      this.ninetyEight = 0,
      this.ninetyNine = 0,
      this.id = '',
      this.createdDate = "",
      this.note = ""});
  @override
  State<SendOrUpdateData> createState() => _SendOrUpdateDataState();
}

class _SendOrUpdateDataState extends State<SendOrUpdateData> {
  // TextEditingController zeroZeroController = TextEditingController();
  // TextEditingController zeroOneController = TextEditingController();
  // TextEditingController zeroTwoController = TextEditingController();

  int? zeroZero = 0;
  int? zeroOne = 0;
  int? zeroTwo = 0;
  int? zeroThree = 0;
  int? zeroFour = 0;
  int? zeroFive = 0;
  int? zeroSixth = 0;
  int? zeroSeven = 0;
  int? zeroEight = 0;
  int? zeroNine = 0;
  int? ten = 0;
  int? eleven = 0;
  int? twelve = 0;
  int? thirteen = 0;
  int? fourteen = 0;
  int? fifteen = 0;
  int? sixteen = 0;
  int? seventeen = 0;
  int? eighteen = 0;
  int? nineteen = 0;
  int? twenty = 0;
  int? twentyOne = 0;
  int? twentyTwo = 0;
  int? twentyThree = 0;
  int? twentyFour = 0;
  int? twentyFive = 0;
  int? twentySix = 0;
  int? twentySeven = 0;
  int? twentyEight = 0;
  int? twentyNine = 0;
  int? thirty = 0;
  int? thirtyOne = 0;
  int? thirtyTwo = 0;
  int? thirtyThree = 0;
  int? thirtyFour = 0;
  int? thirtyFive = 0;
  int? thirtySix = 0;
  int? thirtySeven = 0;
  int? thirtyEight = 0;
  int? thirtyNine = 0;
  int? fourty = 0;
  int? fourtyOne = 0;
  int? fourtyTwo = 0;
  int? fourtyThree = 0;
  int? fourtyFour = 0;
  int? fourtyFive = 0;
  int? fourtySix = 0;
  int? fourtySeven = 0;
  int? fourtyEight = 0;
  int? fourtyNine = 0;
  int? fifty = 0;
  int? fiftyOne = 0;
  int? fiftyTwo = 0;
  int? fiftyThree = 0;
  int? fiftyFour = 0;
  int? fiftyFive = 0;
  int? fiftySix = 0;
  int? fiftySeven = 0;
  int? fiftyEight = 0;
  int? fiftyNine = 0;
  int? sixty = 0;
  int? sixtyOne = 0;
  int? sixtyTwo = 0;
  int? sixtyThree = 0;
  int? sixtyFour = 0;
  int? sixtyFive = 0;
  int? sixtySix = 0;
  int? sixtySeven = 0;
  int? sixtyEight = 0;
  int? sixtyNine = 0;
  int? seventy = 0;
  int? seventyOne = 0;
  int? seventyTwo = 0;
  int? seventyThree = 0;
  int? seventyFour = 0;
  int? seventyFive = 0;
  int? seventySix = 0;
  int? seventySeven = 0;
  int? seventyEight = 0;
  int? seventyNine = 0;
  int? eighty = 0;
  int? eightyOne = 0;
  int? eightyTwo = 0;
  int? eightyThree = 0;
  int? eightyFour = 0;
  int? eightyFive = 0;
  int? eightySix = 0;
  int? eightySeven = 0;
  int? eightyEight = 0;
  int? eightyNine = 0;
  int? ninety = 0;
  int? ninetyOne = 0;
  int? ninetyTwo = 0;
  int? ninetyThree = 0;
  int? ninetyFour = 0;
  int? ninetyFive = 0;
  int? ninetySix = 0;
  int? ninetySeven = 0;
  int? ninetyEight = 0;
  int? ninetyNine = 0;

  TextEditingController inputNumberController = TextEditingController();
  TextEditingController inputAmountController = TextEditingController();

  TextEditingController createdDateController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  bool showProgressIndicator = false;

  String? messageText = "";

  static const twoDTypes = <String>[
    'Straight',
    'Round',
    'Part',
    'Top',
    'Behind',
  ];

  final List<DropdownMenuItem<String>> _inputTypeDropdownController = twoDTypes
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  String? _btnSelectedVal;

  @override
  void initState() {
    // zeroZero = widget.zeroZero;
    // zeroOne = widget.zeroOne;
    // zeroTwo = widget.zeroTwo;

    zeroZero = widget.zeroZero;
    zeroOne = widget.zeroOne;
    zeroTwo = widget.zeroTwo;
    zeroThree = widget.zeroThree;
    zeroFour = widget.zeroFour;
    zeroFive = widget.zeroFive;
    zeroSixth = widget.zeroSixth;
    zeroSeven = widget.zeroSeven;
    zeroEight = widget.zeroEight;
    zeroNine = widget.zeroNine;
    ten = widget.ten;
    eleven = widget.eleven;
    twelve = widget.twelve;
    thirteen = widget.thirteen;
    fourteen = widget.fourteen;
    fifteen = widget.fifteen;
    sixteen = widget.sixteen;
    seventeen = widget.seventeen;
    eighteen = widget.eighteen;
    nineteen = widget.nineteen;
    twenty = widget.twenty;
    twentyOne = widget.twentyOne;
    twentyTwo = widget.twentyTwo;
    twentyThree = widget.twentyThree;
    twentyFour = widget.twentyFour;
    twentyFive = widget.twentyFive;
    twentySix = widget.twentySix;
    twentySeven = widget.twentySeven;
    twentyEight = widget.twentyEight;
    twentyNine = widget.twentyNine;
    thirty = widget.thirty;
    thirtyOne = widget.thirtyOne;
    thirtyTwo = widget.thirtyTwo;
    thirtyThree = widget.thirtyThree;
    thirtyFour = widget.thirtyFour;
    thirtyFive = widget.thirtyFive;
    thirtySix = widget.thirtySix;
    thirtySeven = widget.thirtySeven;
    thirtyEight = widget.thirtyEight;
    thirtyNine = widget.thirtyNine;
    fourty = widget.fourty;
    fourtyOne = widget.fourtyOne;
    fourtyTwo = widget.fourtyTwo;
    fourtyThree = widget.fourtyThree;
    fourtyFour = widget.fourtyFour;
    fourtyFive = widget.fourtyFive;
    fourtySix = widget.fourtySix;
    fourtySeven = widget.fourtySeven;
    fourtyEight = widget.fourtyEight;
    fourtyNine = widget.fourtyNine;
    fifty = widget.fifty;
    fiftyOne = widget.fiftyOne;
    fiftyTwo = widget.fiftyTwo;
    fiftyThree = widget.fiftyThree;
    fiftyFour = widget.fiftyFour;
    fiftyFive = widget.fiftyFive;
    fiftySix = widget.fiftySix;
    fiftySeven = widget.fiftySeven;
    fiftyEight = widget.fiftyEight;
    fiftyNine = widget.fiftyNine;
    sixty = widget.sixty;
    sixtyOne = widget.sixtyOne;
    sixtyTwo = widget.sixtyTwo;
    sixtyThree = widget.sixtyThree;
    sixtyFour = widget.sixtyFour;
    sixtyFive = widget.sixtyFive;
    sixtySix = widget.sixtySix;
    sixtySeven = widget.sixtySeven;
    sixtyEight = widget.sixtyEight;
    sixtyNine = widget.sixtyNine;
    seventy = widget.seventy;
    seventyOne = widget.seventyOne;
    seventyTwo = widget.seventyTwo;
    seventyThree = widget.seventyThree;
    seventyFour = widget.seventyFour;
    seventyFive = widget.seventyFive;
    seventySix = widget.seventySix;
    seventySeven = widget.seventySeven;
    seventyEight = widget.seventyEight;
    seventyNine = widget.seventyNine;
    eighty = widget.eighty;
    eightyOne = widget.eightyOne;
    eightyTwo = widget.eightyTwo;
    eightyThree = widget.eightyThree;
    eightyFour = widget.eightyFour;
    eightyFive = widget.eightyFive;
    eightySix = widget.eightySix;
    eightySeven = widget.eightySeven;
    eightyEight = widget.eightyEight;
    eightyNine = widget.eightyNine;
    ninety = widget.ninety;
    ninetyOne = widget.ninetyOne;
    ninetyTwo = widget.ninetyTwo;
    ninetyThree = widget.ninetyThree;
    ninetyFour = widget.ninetyFour;
    ninetyFive = widget.ninetyFive;
    ninetySix = widget.ninetySix;
    ninetySeven = widget.ninetySeven;
    ninetyEight = widget.ninetyEight;
    ninetyNine = widget.ninetyNine;

    createdDateController.text = widget.createdDate;
    noteController.text = widget.note ?? "Hello ...";

    super.initState();
  }

  @override
  void dispose() {
    // zeroZeroController.dispose();
    // zeroOneController.dispose();
    // zeroTwoController.dispose();
    inputNumberController.dispose();
    inputAmountController.dispose();
    createdDateController.dispose();
    noteController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 115, 7, 7),
        centerTitle: true,
        title: Text(
          '2D Cash In',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        padding:
            EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2D Number',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7,
            ),
            CustomTextFormField(
              controller: inputNumberController,
              textInputType: TextInputType.number,
              maxlength: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Cash Amount',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7,
            ),
            CustomTextFormField(
              controller: inputAmountController,
              textInputType: TextInputType.number,
              maxlength: 5,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '2D Type',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 217, 216, 216)),
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 15, top: 2),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(color: Colors.white),
                  value: _btnSelectedVal,
                  hint: const Text(
                    'Choose',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 23, 131)),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() => _btnSelectedVal = newValue);
                    }
                  },
                  items: _inputTypeDropdownController,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            (widget.id.isNotEmpty)
                ? Container()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Note',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      CustomTextFormField(
                        controller: noteController,
                        maxlength: 20,
                      ),
                    ],
                  ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () async {
                setState(() {});
                //ForStraight
                if (inputNumberController.text == "00" &&
                    _btnSelectedVal == "Straight") {
                  zeroZero = zeroZero == 0
                      ? int.parse(inputAmountController.text)
                      : zeroZero! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "01" &&
                    _btnSelectedVal == "Straight") {
                  zeroOne = zeroOne == 0
                      ? int.parse(inputAmountController.text)
                      : zeroOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "02" &&
                    _btnSelectedVal == "Straight") {
                  zeroTwo = zeroTwo == 0
                      ? int.parse(inputAmountController.text)
                      : zeroTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "03" &&
                    _btnSelectedVal == "Straight") {
                  zeroThree = zeroThree == 0
                      ? int.parse(inputAmountController.text)
                      : zeroThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "04" &&
                    _btnSelectedVal == "Straight") {
                  zeroFour = zeroFour == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "05" &&
                    _btnSelectedVal == "Straight") {
                  zeroFive = zeroFive == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "06" &&
                    _btnSelectedVal == "Straight") {
                  zeroSixth = zeroSixth == 0
                      ? int.parse(inputAmountController.text)
                      : zeroSixth! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "07" &&
                    _btnSelectedVal == "Straight") {
                  zeroSeven = zeroSeven == 0
                      ? int.parse(inputAmountController.text)
                      : zeroSeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "08" &&
                    _btnSelectedVal == "Straight") {
                  zeroEight = zeroEight == 0
                      ? int.parse(inputAmountController.text)
                      : zeroEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "09" &&
                    _btnSelectedVal == "Straight") {
                  zeroNine = zeroNine == 0
                      ? int.parse(inputAmountController.text)
                      : zeroNine! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "10" &&
                    _btnSelectedVal == "Straight") {
                  ten = ten == 0
                      ? int.parse(inputAmountController.text)
                      : ten! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "11" &&
                    _btnSelectedVal == "Straight") {
                  eleven = eleven == 0
                      ? int.parse(inputAmountController.text)
                      : eleven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "12" &&
                    _btnSelectedVal == "Straight") {
                  twelve = twelve == 0
                      ? int.parse(inputAmountController.text)
                      : twelve! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "13" &&
                    _btnSelectedVal == "Straight") {
                  thirteen = thirteen == 0
                      ? int.parse(inputAmountController.text)
                      : thirteen! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "14" &&
                    _btnSelectedVal == "Straight") {
                  fourteen = fourteen == 0
                      ? int.parse(inputAmountController.text)
                      : fourteen! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "15" &&
                    _btnSelectedVal == "Straight") {
                  fifteen = zeroZero == 0
                      ? int.parse(inputAmountController.text)
                      : fifteen! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "16" &&
                    _btnSelectedVal == "Straight") {
                  sixteen = sixteen == 0
                      ? int.parse(inputAmountController.text)
                      : sixteen! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "17" &&
                    _btnSelectedVal == "Straight") {
                  seventeen = seventeen == 0
                      ? int.parse(inputAmountController.text)
                      : seventeen! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "18" &&
                    _btnSelectedVal == "Straight") {
                  eighteen = eighteen == 0
                      ? int.parse(inputAmountController.text)
                      : eighteen! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "19" &&
                    _btnSelectedVal == "Straight") {
                  nineteen = nineteen == 0
                      ? int.parse(inputAmountController.text)
                      : nineteen! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "20" &&
                    _btnSelectedVal == "Straight") {
                  twenty = twenty == 0
                      ? int.parse(inputAmountController.text)
                      : twenty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "21" &&
                    _btnSelectedVal == "Straight") {
                  twentyOne = twentyOne == 0
                      ? int.parse(inputAmountController.text)
                      : twentyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "22" &&
                    _btnSelectedVal == "Straight") {
                  twentyTwo = twentyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : twentyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "23" &&
                    _btnSelectedVal == "Straight") {
                  twentyThree = twentyThree == 0
                      ? int.parse(inputAmountController.text)
                      : twentyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "24" &&
                    _btnSelectedVal == "Straight") {
                  twentyFour = twentyFour == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "25" &&
                    _btnSelectedVal == "Straight") {
                  twentyFive = twentyFive == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "26" &&
                    _btnSelectedVal == "Straight") {
                  twentySix = twentySix == 0
                      ? int.parse(inputAmountController.text)
                      : twentySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "27" &&
                    _btnSelectedVal == "Straight") {
                  twentySeven = twentySeven == 0
                      ? int.parse(inputAmountController.text)
                      : twentySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "28" &&
                    _btnSelectedVal == "Straight") {
                  twentyEight = twentyEight == 0
                      ? int.parse(inputAmountController.text)
                      : twentyEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "29" &&
                    _btnSelectedVal == "Straight") {
                  twentyNine = twentyNine == 0
                      ? int.parse(inputAmountController.text)
                      : twentyNine! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "30" &&
                    _btnSelectedVal == "Straight") {
                  thirty = thirty == 0
                      ? int.parse(inputAmountController.text)
                      : thirty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "31" &&
                    _btnSelectedVal == "Straight") {
                  thirtyOne = thirtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "32" &&
                    _btnSelectedVal == "Straight") {
                  thirtyTwo = thirtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "33" &&
                    _btnSelectedVal == "Straight") {
                  thirtyThree = thirtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "34" &&
                    _btnSelectedVal == "Straight") {
                  thirtyFour = thirtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "35" &&
                    _btnSelectedVal == "Straight") {
                  thirtyFive = thirtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "36" &&
                    _btnSelectedVal == "Straight") {
                  thirtySix = thirtySix == 0
                      ? int.parse(inputAmountController.text)
                      : thirtySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "37" &&
                    _btnSelectedVal == "Straight") {
                  thirtySeven = thirtySeven == 0
                      ? int.parse(inputAmountController.text)
                      : thirtySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "38" &&
                    _btnSelectedVal == "Straight") {
                  thirtyEight = thirtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "39" &&
                    _btnSelectedVal == "Straight") {
                  thirtyNine = thirtyNine == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyNine! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "40" &&
                    _btnSelectedVal == "Straight") {
                  fourty = fourty == 0
                      ? int.parse(inputAmountController.text)
                      : fourty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "41" &&
                    _btnSelectedVal == "Straight") {
                  fourtyOne = fourtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "42" &&
                    _btnSelectedVal == "Straight") {
                  fourtyTwo = fourtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "43" &&
                    _btnSelectedVal == "Straight") {
                  fourtyThree = fourtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "44" &&
                    _btnSelectedVal == "Straight") {
                  fourtyFour = fourtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "45" &&
                    _btnSelectedVal == "Straight") {
                  fourtyFive = fourtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "46" &&
                    _btnSelectedVal == "Straight") {
                  fourtySix = fourtySix == 0
                      ? int.parse(inputAmountController.text)
                      : fourtySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "47" &&
                    _btnSelectedVal == "Straight") {
                  fourtySeven = fourtySeven == 0
                      ? int.parse(inputAmountController.text)
                      : fourtySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "48" &&
                    _btnSelectedVal == "Straight") {
                  fourtyEight = fourtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "49" &&
                    _btnSelectedVal == "Straight") {
                  fourtyNine = fourtyNine == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyNine! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "50" &&
                    _btnSelectedVal == "Straight") {
                  fifty = fifty == 0
                      ? int.parse(inputAmountController.text)
                      : fifty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "51" &&
                    _btnSelectedVal == "Straight") {
                  fiftyOne = fiftyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "52" &&
                    _btnSelectedVal == "Straight") {
                  fiftyTwo = fiftyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "53" &&
                    _btnSelectedVal == "Straight") {
                  fiftyThree = fiftyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "54" &&
                    _btnSelectedVal == "Straight") {
                  fiftyFour = fiftyFour == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "55" &&
                    _btnSelectedVal == "Straight") {
                  fiftyFive = fiftyFive == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "56" &&
                    _btnSelectedVal == "Straight") {
                  fiftySix = fiftySix == 0
                      ? int.parse(inputAmountController.text)
                      : fiftySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "57" &&
                    _btnSelectedVal == "Straight") {
                  fiftySeven = fiftySeven == 0
                      ? int.parse(inputAmountController.text)
                      : fiftySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "58" &&
                    _btnSelectedVal == "Straight") {
                  fiftyEight = fiftyEight == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "59" &&
                    _btnSelectedVal == "Straight") {
                  fiftyNine = fiftyNine == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyNine! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "60" &&
                    _btnSelectedVal == "Straight") {
                  sixty = sixty == 0
                      ? int.parse(inputAmountController.text)
                      : sixty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "61" &&
                    _btnSelectedVal == "Straight") {
                  sixtyOne = sixtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "62" &&
                    _btnSelectedVal == "Straight") {
                  sixtyTwo = sixtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "63" &&
                    _btnSelectedVal == "Straight") {
                  sixtyThree = sixtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "64" &&
                    _btnSelectedVal == "Straight") {
                  sixtyFour = sixtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "65" &&
                    _btnSelectedVal == "Straight") {
                  sixtyFive = sixtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "66" &&
                    _btnSelectedVal == "Straight") {
                  sixtySix = sixtySix == 0
                      ? int.parse(inputAmountController.text)
                      : sixtySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "67" &&
                    _btnSelectedVal == "Straight") {
                  sixtySeven = sixtySeven == 0
                      ? int.parse(inputAmountController.text)
                      : sixtySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "68" &&
                    _btnSelectedVal == "Straight") {
                  sixtyEight = sixtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "69" &&
                    _btnSelectedVal == "Straight") {
                  sixtyNine = sixtyNine == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyNine! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "70" &&
                    _btnSelectedVal == "Straight") {
                  seventy = seventy == 0
                      ? int.parse(inputAmountController.text)
                      : seventy! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "71" &&
                    _btnSelectedVal == "Straight") {
                  seventyOne = seventyOne == 0
                      ? int.parse(inputAmountController.text)
                      : seventyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "72" &&
                    _btnSelectedVal == "Straight") {
                  seventyTwo = seventyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : seventyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "73" &&
                    _btnSelectedVal == "Straight") {
                  seventyThree = seventyThree == 0
                      ? int.parse(inputAmountController.text)
                      : seventyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "74" &&
                    _btnSelectedVal == "Straight") {
                  seventyFour = seventyFour == 0
                      ? int.parse(inputAmountController.text)
                      : seventyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "75" &&
                    _btnSelectedVal == "Straight") {
                  seventyFive = seventyFive == 0
                      ? int.parse(inputAmountController.text)
                      : seventyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "76" &&
                    _btnSelectedVal == "Straight") {
                  seventySix = seventySix == 0
                      ? int.parse(inputAmountController.text)
                      : seventySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "77" &&
                    _btnSelectedVal == "Straight") {
                  seventySeven = seventySeven == 0
                      ? int.parse(inputAmountController.text)
                      : seventySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "78" &&
                    _btnSelectedVal == "Straight") {
                  seventyEight = seventyEight == 0
                      ? int.parse(inputAmountController.text)
                      : seventyEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "79" &&
                    _btnSelectedVal == "Straight") {
                  seventyNine = seventyNine == 0
                      ? int.parse(inputAmountController.text)
                      : seventyNine! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "80" &&
                    _btnSelectedVal == "Straight") {
                  eighty = eighty == 0
                      ? int.parse(inputAmountController.text)
                      : eighty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "81" &&
                    _btnSelectedVal == "Straight") {
                  eightyOne = eightyOne == 0
                      ? int.parse(inputAmountController.text)
                      : eightyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "82" &&
                    _btnSelectedVal == "Straight") {
                  eightyTwo = eightyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : eightyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "83" &&
                    _btnSelectedVal == "Straight") {
                  eightyThree = eightyThree == 0
                      ? int.parse(inputAmountController.text)
                      : eightyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "84" &&
                    _btnSelectedVal == "Straight") {
                  eightyFour = eightyFour == 0
                      ? int.parse(inputAmountController.text)
                      : eightyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "85" &&
                    _btnSelectedVal == "Straight") {
                  eightyFive = eightyFive == 0
                      ? int.parse(inputAmountController.text)
                      : eightyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "86" &&
                    _btnSelectedVal == "Straight") {
                  eightySix = eightySix == 0
                      ? int.parse(inputAmountController.text)
                      : eightySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "87" &&
                    _btnSelectedVal == "Straight") {
                  eightySeven = eightySeven == 0
                      ? int.parse(inputAmountController.text)
                      : eightySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "88" &&
                    _btnSelectedVal == "Straight") {
                  eightyEight = eightyEight == 0
                      ? int.parse(inputAmountController.text)
                      : eightyEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "89" &&
                    _btnSelectedVal == "Straight") {
                  eightyNine = eightyNine == 0
                      ? int.parse(inputAmountController.text)
                      : eightyNine! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "90" &&
                    _btnSelectedVal == "Straight") {
                  ninety = ninety == 0
                      ? int.parse(inputAmountController.text)
                      : ninety! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "91" &&
                    _btnSelectedVal == "Straight") {
                  ninetyOne = ninetyOne == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "92" &&
                    _btnSelectedVal == "Straight") {
                  ninetyTwo = ninetyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "93" &&
                    _btnSelectedVal == "Straight") {
                  ninetyThree = ninetyThree == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "94" &&
                    _btnSelectedVal == "Straight") {
                  ninetyFour = ninetyFour == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "95" &&
                    _btnSelectedVal == "Straight") {
                  ninetyFive = ninetyFive == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "96" &&
                    _btnSelectedVal == "Straight") {
                  ninetySix = ninetySix == 0
                      ? int.parse(inputAmountController.text)
                      : ninetySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "97" &&
                    _btnSelectedVal == "Straight") {
                  ninetySeven = ninetySeven == 0
                      ? int.parse(inputAmountController.text)
                      : ninetySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "98" &&
                    _btnSelectedVal == "Straight") {
                  ninetyEight = ninetyEight == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyEight! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "99" &&
                    _btnSelectedVal == "Straight") {
                  ninetyNine = ninetyNine == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyNine! + int.parse(inputAmountController.text);
                }
                //ForRound
                else if (inputNumberController.text == "01" ||
                    inputNumberController.text == "10" &&
                        _btnSelectedVal == "Round") {
                  zeroOne = zeroOne == 0
                      ? int.parse(inputAmountController.text)
                      : zeroOne! + int.parse(inputAmountController.text);
                  ten = ten == 0
                      ? int.parse(inputAmountController.text)
                      : ten! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "02" ||
                    inputNumberController.text == "20" &&
                        _btnSelectedVal == "Round") {
                  zeroTwo = zeroTwo == 0
                      ? int.parse(inputAmountController.text)
                      : zeroTwo! + int.parse(inputAmountController.text);
                  twenty = twenty == 0
                      ? int.parse(inputAmountController.text)
                      : twenty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "03" ||
                    inputNumberController.text == "30" &&
                        _btnSelectedVal == "Round") {
                  zeroThree = zeroThree == 0
                      ? int.parse(inputAmountController.text)
                      : zeroThree! + int.parse(inputAmountController.text);
                  thirty = thirty == 0
                      ? int.parse(inputAmountController.text)
                      : thirty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "04" ||
                    inputNumberController.text == "40" &&
                        _btnSelectedVal == "Round") {
                  zeroFour = zeroFour == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFour! + int.parse(inputAmountController.text);
                  fourty = fourty == 0
                      ? int.parse(inputAmountController.text)
                      : thirty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "05" ||
                    inputNumberController.text == "50" &&
                        _btnSelectedVal == "Round") {
                  zeroFive = zeroFive == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFive! + int.parse(inputAmountController.text);
                  fifty = fifty == 0
                      ? int.parse(inputAmountController.text)
                      : fifty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "06" ||
                    inputNumberController.text == "60" &&
                        _btnSelectedVal == "Round") {
                  zeroSixth = zeroSixth == 0
                      ? int.parse(inputAmountController.text)
                      : zeroSixth! + int.parse(inputAmountController.text);
                  sixty = sixty == 0
                      ? int.parse(inputAmountController.text)
                      : sixty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "07" ||
                    inputNumberController.text == "70" &&
                        _btnSelectedVal == "Round") {
                  zeroSeven = zeroSeven == 0
                      ? int.parse(inputAmountController.text)
                      : zeroSeven! + int.parse(inputAmountController.text);
                  seventy = seventy == 0
                      ? int.parse(inputAmountController.text)
                      : seventy! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "08" ||
                    inputNumberController.text == "80" &&
                        _btnSelectedVal == "Round") {
                  zeroEight = zeroEight == 0
                      ? int.parse(inputAmountController.text)
                      : zeroEight! + int.parse(inputAmountController.text);
                  eighty = eighty == 0
                      ? int.parse(inputAmountController.text)
                      : eighty! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "09" ||
                    inputNumberController.text == "90" &&
                        _btnSelectedVal == "Round") {
                  zeroNine = zeroNine == 0
                      ? int.parse(inputAmountController.text)
                      : zeroNine! + int.parse(inputAmountController.text);
                  ninety = ninety == 0
                      ? int.parse(inputAmountController.text)
                      : ninety! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "09" ||
                    inputNumberController.text == "90" &&
                        _btnSelectedVal == "Round") {
                  zeroNine = zeroNine == 0
                      ? int.parse(inputAmountController.text)
                      : zeroNine! + int.parse(inputAmountController.text);
                  ninety = ninety == 0
                      ? int.parse(inputAmountController.text)
                      : ninety! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "12" ||
                    inputNumberController.text == "21" &&
                        _btnSelectedVal == "Round") {
                  twelve = twelve == 0
                      ? int.parse(inputAmountController.text)
                      : twelve! + int.parse(inputAmountController.text);
                  twentyOne = twentyOne == 0
                      ? int.parse(inputAmountController.text)
                      : twentyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "13" ||
                    inputNumberController.text == "31" &&
                        _btnSelectedVal == "Round") {
                  thirteen = thirteen == 0
                      ? int.parse(inputAmountController.text)
                      : thirteen! + int.parse(inputAmountController.text);
                  twentyOne = twentyOne == 0
                      ? int.parse(inputAmountController.text)
                      : twentyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "14" ||
                    inputNumberController.text == "41" &&
                        _btnSelectedVal == "Round") {
                  fourteen = fourteen == 0
                      ? int.parse(inputAmountController.text)
                      : fourteen! + int.parse(inputAmountController.text);
                  fourtyOne = fourtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "15" ||
                    inputNumberController.text == "51" &&
                        _btnSelectedVal == "Round") {
                  fifteen = fifteen == 0
                      ? int.parse(inputAmountController.text)
                      : fifteen! + int.parse(inputAmountController.text);
                  fiftyOne = fiftyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "16" ||
                    inputNumberController.text == "61" &&
                        _btnSelectedVal == "Round") {
                  sixteen = sixteen == 0
                      ? int.parse(inputAmountController.text)
                      : sixteen! + int.parse(inputAmountController.text);
                  sixtyOne = sixtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "17" ||
                    inputNumberController.text == "71" &&
                        _btnSelectedVal == "Round") {
                  seventeen = seventeen == 0
                      ? int.parse(inputAmountController.text)
                      : seventeen! + int.parse(inputAmountController.text);
                  seventyOne = seventyOne == 0
                      ? int.parse(inputAmountController.text)
                      : seventyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "18" ||
                    inputNumberController.text == "81" &&
                        _btnSelectedVal == "Round") {
                  eighteen = eighteen == 0
                      ? int.parse(inputAmountController.text)
                      : eighteen! + int.parse(inputAmountController.text);
                  eightyOne = eightyOne == 0
                      ? int.parse(inputAmountController.text)
                      : eightyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "19" ||
                    inputNumberController.text == "91" &&
                        _btnSelectedVal == "Round") {
                  nineteen = eighteen == 0
                      ? int.parse(inputAmountController.text)
                      : eighteen! + int.parse(inputAmountController.text);
                  eightyOne = eightyOne == 0
                      ? int.parse(inputAmountController.text)
                      : eightyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "23" ||
                    inputNumberController.text == "32" &&
                        _btnSelectedVal == "Round") {
                  twentyThree = twentyThree == 0
                      ? int.parse(inputAmountController.text)
                      : twentyThree! + int.parse(inputAmountController.text);
                  thirtyTwo = thirtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "24" ||
                    inputNumberController.text == "42" &&
                        _btnSelectedVal == "Round") {
                  twentyFour = twentyFour == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFour! + int.parse(inputAmountController.text);
                  fourtyTwo = fourtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "25" ||
                    inputNumberController.text == "52" &&
                        _btnSelectedVal == "Round") {
                  twentyFive = twentyFive == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFive! + int.parse(inputAmountController.text);
                  fiftyTwo = fiftyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "26" ||
                    inputNumberController.text == "62" &&
                        _btnSelectedVal == "Round") {
                  twentySix = twentySix == 0
                      ? int.parse(inputAmountController.text)
                      : twentySix! + int.parse(inputAmountController.text);
                  sixtyTwo = sixtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "27" ||
                    inputNumberController.text == "72" &&
                        _btnSelectedVal == "Round") {
                  twentySeven = twentySeven == 0
                      ? int.parse(inputAmountController.text)
                      : twentySeven! + int.parse(inputAmountController.text);
                  seventyTwo = seventyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : seventyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "28" ||
                    inputNumberController.text == "82" &&
                        _btnSelectedVal == "Round") {
                  twentyEight = twentyEight == 0
                      ? int.parse(inputAmountController.text)
                      : twentyEight! + int.parse(inputAmountController.text);
                  eightyTwo = eightyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : eightyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "29" ||
                    inputNumberController.text == "92" &&
                        _btnSelectedVal == "Round") {
                  twentyNine = twentyNine == 0
                      ? int.parse(inputAmountController.text)
                      : twentyNine! + int.parse(inputAmountController.text);
                  ninetyTwo = ninetyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "34" ||
                    inputNumberController.text == "43" &&
                        _btnSelectedVal == "Round") {
                  thirtyFour = thirtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFour! + int.parse(inputAmountController.text);
                  fourtyThree = fourtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "35" ||
                    inputNumberController.text == "53" &&
                        _btnSelectedVal == "Round") {
                  thirtyFive = thirtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFive! + int.parse(inputAmountController.text);
                  fiftyThree = fiftyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "36" ||
                    inputNumberController.text == "63" &&
                        _btnSelectedVal == "Round") {
                  thirtySix = thirtySix == 0
                      ? int.parse(inputAmountController.text)
                      : thirtySix! + int.parse(inputAmountController.text);
                  sixtyThree = sixtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "37" ||
                    inputNumberController.text == "73" &&
                        _btnSelectedVal == "Round") {
                  thirtySeven = thirtySeven == 0
                      ? int.parse(inputAmountController.text)
                      : thirtySeven! + int.parse(inputAmountController.text);
                  seventyThree = seventyThree == 0
                      ? int.parse(inputAmountController.text)
                      : seventyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "38" ||
                    inputNumberController.text == "83" &&
                        _btnSelectedVal == "Round") {
                  thirtyEight = thirtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyEight! + int.parse(inputAmountController.text);
                  eightyThree = eightyThree == 0
                      ? int.parse(inputAmountController.text)
                      : eightyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "38" ||
                    inputNumberController.text == "83" &&
                        _btnSelectedVal == "Round") {
                  thirtyEight = thirtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyEight! + int.parse(inputAmountController.text);
                  eightyThree = eightyThree == 0
                      ? int.parse(inputAmountController.text)
                      : eightyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "39" ||
                    inputNumberController.text == "93" &&
                        _btnSelectedVal == "Round") {
                  thirtyNine = thirtyNine == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyNine! + int.parse(inputAmountController.text);
                  ninetyThree = ninetyThree == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "45" ||
                    inputNumberController.text == "54" &&
                        _btnSelectedVal == "Round") {
                  fourtyFive = fourtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFive! + int.parse(inputAmountController.text);
                  fiftyFour = fiftyFour == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "46" ||
                    inputNumberController.text == "64" &&
                        _btnSelectedVal == "Round") {
                  fourtySix = fourtySix == 0
                      ? int.parse(inputAmountController.text)
                      : fourtySix! + int.parse(inputAmountController.text);
                  sixtyFour = sixtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "47" ||
                    inputNumberController.text == "74" &&
                        _btnSelectedVal == "Round") {
                  fourtySeven = fourtySeven == 0
                      ? int.parse(inputAmountController.text)
                      : fourtySeven! + int.parse(inputAmountController.text);
                  seventyFour = seventyFour == 0
                      ? int.parse(inputAmountController.text)
                      : seventyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "48" ||
                    inputNumberController.text == "84" &&
                        _btnSelectedVal == "Round") {
                  fourtyEight = fourtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyEight! + int.parse(inputAmountController.text);
                  eightyFour = eightyFour == 0
                      ? int.parse(inputAmountController.text)
                      : eightyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "49" ||
                    inputNumberController.text == "93" &&
                        _btnSelectedVal == "Round") {
                  fourtyNine = fourtyNine == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyNine! + int.parse(inputAmountController.text);
                  ninetyFour = ninetyFour == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "56" ||
                    inputNumberController.text == "65" &&
                        _btnSelectedVal == "Round") {
                  fiftySix = fiftySix == 0
                      ? int.parse(inputAmountController.text)
                      : fiftySix! + int.parse(inputAmountController.text);
                  sixtyFive = sixtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "57" ||
                    inputNumberController.text == "75" &&
                        _btnSelectedVal == "Round") {
                  fiftySeven = fiftySeven == 0
                      ? int.parse(inputAmountController.text)
                      : fiftySeven! + int.parse(inputAmountController.text);
                  seventyFive = seventyFive == 0
                      ? int.parse(inputAmountController.text)
                      : seventyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "58" ||
                    inputNumberController.text == "85" &&
                        _btnSelectedVal == "Round") {
                  fiftyEight = fiftyEight == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyEight! + int.parse(inputAmountController.text);
                  eightyFive = eightyFive == 0
                      ? int.parse(inputAmountController.text)
                      : eightyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "59" ||
                    inputNumberController.text == "95" &&
                        _btnSelectedVal == "Round") {
                  fiftyNine = fiftyNine == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyNine! + int.parse(inputAmountController.text);
                  ninetyFive = ninetyFive == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "67" ||
                    inputNumberController.text == "76" &&
                        _btnSelectedVal == "Round") {
                  sixtySeven = sixtySeven == 0
                      ? int.parse(inputAmountController.text)
                      : sixtySeven! + int.parse(inputAmountController.text);
                  seventySix = seventySix == 0
                      ? int.parse(inputAmountController.text)
                      : seventySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "68" ||
                    inputNumberController.text == "86" &&
                        _btnSelectedVal == "Round") {
                  sixtyEight = sixtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyEight! + int.parse(inputAmountController.text);
                  eightySix = eightySix == 0
                      ? int.parse(inputAmountController.text)
                      : eightySix! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "69" ||
                    inputNumberController.text == "96" &&
                        _btnSelectedVal == "Round") {
                  sixtyNine = sixtyNine == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyNine! + int.parse(inputAmountController.text);
                  ninetySix = ninetySix == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "78" ||
                    inputNumberController.text == "87" &&
                        _btnSelectedVal == "Round") {
                  seventyEight = seventyEight == 0
                      ? int.parse(inputAmountController.text)
                      : seventyEight! + int.parse(inputAmountController.text);
                  eightySeven = eightySeven == 0
                      ? int.parse(inputAmountController.text)
                      : eightySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "79" ||
                    inputNumberController.text == "97" &&
                        _btnSelectedVal == "Round") {
                  seventyNine = seventyNine == 0
                      ? int.parse(inputAmountController.text)
                      : seventyNine! + int.parse(inputAmountController.text);
                  ninetySeven = ninetySeven == 0
                      ? int.parse(inputAmountController.text)
                      : ninetySeven! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "89" ||
                    inputNumberController.text == "98" &&
                        _btnSelectedVal == "Round") {
                  eightyNine = eightyNine == 0
                      ? int.parse(inputAmountController.text)
                      : eightyNine! + int.parse(inputAmountController.text);
                  ninetyEight = ninetyEight == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyEight! + int.parse(inputAmountController.text);
                }
                //ForPart

                else if (inputNumberController.text == "0" &&
                    _btnSelectedVal == "Part") {
                  zeroZero = zeroZero == 0
                      ? int.parse(inputAmountController.text)
                      : zeroZero! + int.parse(inputAmountController.text);
                  zeroOne = zeroOne == 0
                      ? int.parse(inputAmountController.text)
                      : zeroOne! + int.parse(inputAmountController.text);
                  zeroTwo = zeroTwo == 0
                      ? int.parse(inputAmountController.text)
                      : zeroTwo! + int.parse(inputAmountController.text);
                  zeroThree = zeroThree == 0
                      ? int.parse(inputAmountController.text)
                      : zeroThree! + int.parse(inputAmountController.text);
                  zeroFour = zeroFour == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFour! + int.parse(inputAmountController.text);
                  zeroFive = zeroFive == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFive! + int.parse(inputAmountController.text);
                  zeroSixth = zeroSixth == 0
                      ? int.parse(inputAmountController.text)
                      : zeroSixth! + int.parse(inputAmountController.text);
                  zeroSeven = zeroSeven == 0
                      ? int.parse(inputAmountController.text)
                      : zeroSeven! + int.parse(inputAmountController.text);
                  zeroEight = zeroEight == 0
                      ? int.parse(inputAmountController.text)
                      : zeroEight! + int.parse(inputAmountController.text);
                  zeroNine = zeroNine == 0
                      ? int.parse(inputAmountController.text)
                      : zeroNine! + int.parse(inputAmountController.text);
                  ten = ten == 0
                      ? int.parse(inputAmountController.text)
                      : ten! + int.parse(inputAmountController.text);
                  twenty = twenty == 0
                      ? int.parse(inputAmountController.text)
                      : twenty! + int.parse(inputAmountController.text);
                  thirty = thirty == 0
                      ? int.parse(inputAmountController.text)
                      : thirty! + int.parse(inputAmountController.text);
                  fourty = fourty == 0
                      ? int.parse(inputAmountController.text)
                      : fourty! + int.parse(inputAmountController.text);
                  fifty = fifty == 0
                      ? int.parse(inputAmountController.text)
                      : fifty! + int.parse(inputAmountController.text);
                  sixty = sixty == 0
                      ? int.parse(inputAmountController.text)
                      : sixty! + int.parse(inputAmountController.text);
                  seventy = seventy == 0
                      ? int.parse(inputAmountController.text)
                      : seventy! + int.parse(inputAmountController.text);
                  eighty = eighty == 0
                      ? int.parse(inputAmountController.text)
                      : eighty! + int.parse(inputAmountController.text);
                  ninety = ninety == 0
                      ? int.parse(inputAmountController.text)
                      : ninety! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "1" &&
                    _btnSelectedVal == "Part") {
                  zeroOne = zeroOne == 0
                      ? int.parse(inputAmountController.text)
                      : zeroOne! + int.parse(inputAmountController.text);
                  twelve = twelve == 0
                      ? int.parse(inputAmountController.text)
                      : twelve! + int.parse(inputAmountController.text);
                  thirteen = thirteen == 0
                      ? int.parse(inputAmountController.text)
                      : thirteen! + int.parse(inputAmountController.text);
                  fourteen = fourteen == 0
                      ? int.parse(inputAmountController.text)
                      : fourteen! + int.parse(inputAmountController.text);
                  fifteen = fifteen == 0
                      ? int.parse(inputAmountController.text)
                      : fifteen! + int.parse(inputAmountController.text);
                  sixteen = sixteen == 0
                      ? int.parse(inputAmountController.text)
                      : sixteen! + int.parse(inputAmountController.text);
                  seventeen = seventeen == 0
                      ? int.parse(inputAmountController.text)
                      : seventeen! + int.parse(inputAmountController.text);
                  eighteen = eighteen == 0
                      ? int.parse(inputAmountController.text)
                      : eighteen! + int.parse(inputAmountController.text);
                  nineteen = nineteen == 0
                      ? int.parse(inputAmountController.text)
                      : nineteen! + int.parse(inputAmountController.text);
                  eleven = eleven == 0
                      ? int.parse(inputAmountController.text)
                      : eleven! + int.parse(inputAmountController.text);
                  ten = ten == 0
                      ? int.parse(inputAmountController.text)
                      : ten! + int.parse(inputAmountController.text);
                  twentyOne = twentyOne == 0
                      ? int.parse(inputAmountController.text)
                      : twenty! + int.parse(inputAmountController.text);
                  thirtyOne = thirtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyOne! + int.parse(inputAmountController.text);
                  fourtyOne = fourtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyOne! + int.parse(inputAmountController.text);
                  fiftyOne = fiftyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyOne! + int.parse(inputAmountController.text);
                  sixtyOne = sixtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyOne! + int.parse(inputAmountController.text);
                  seventyOne = seventyOne == 0
                      ? int.parse(inputAmountController.text)
                      : seventyOne! + int.parse(inputAmountController.text);
                  eightyOne = eightyOne == 0
                      ? int.parse(inputAmountController.text)
                      : eightyOne! + int.parse(inputAmountController.text);
                  ninetyOne = ninetyOne == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyOne! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "2" &&
                    _btnSelectedVal == "Part") {
                  zeroTwo = zeroTwo == 0
                      ? int.parse(inputAmountController.text)
                      : zeroTwo! + int.parse(inputAmountController.text);
                  twentyOne = twentyOne == 0
                      ? int.parse(inputAmountController.text)
                      : twentyOne! + int.parse(inputAmountController.text);
                  twentyThree = twentyThree == 0
                      ? int.parse(inputAmountController.text)
                      : twentyThree! + int.parse(inputAmountController.text);
                  twentyFour = twentyFour == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFour! + int.parse(inputAmountController.text);
                  twentyFive = twentyFive == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFive! + int.parse(inputAmountController.text);
                  twentySix = twentySix == 0
                      ? int.parse(inputAmountController.text)
                      : twentySix! + int.parse(inputAmountController.text);
                  twentySeven = twentySeven == 0
                      ? int.parse(inputAmountController.text)
                      : twentySeven! + int.parse(inputAmountController.text);
                  twentyEight = twentyEight == 0
                      ? int.parse(inputAmountController.text)
                      : twentyEight! + int.parse(inputAmountController.text);
                  twentyNine = twentyNine == 0
                      ? int.parse(inputAmountController.text)
                      : twentyNine! + int.parse(inputAmountController.text);
                  twentyTwo = twentyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : twentyTwo! + int.parse(inputAmountController.text);
                  twenty = twenty == 0
                      ? int.parse(inputAmountController.text)
                      : twenty! + int.parse(inputAmountController.text);
                  twelve = twelve == 0
                      ? int.parse(inputAmountController.text)
                      : twelve! + int.parse(inputAmountController.text);
                  thirtyTwo = thirtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyTwo! + int.parse(inputAmountController.text);
                  fourtyTwo = fourtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyOne! + int.parse(inputAmountController.text);
                  fiftyTwo = fiftyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyTwo! + int.parse(inputAmountController.text);
                  sixtyTwo = sixtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyTwo! + int.parse(inputAmountController.text);
                  seventyTwo = seventyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : seventyTwo! + int.parse(inputAmountController.text);
                  eightyTwo = eightyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : eightyTwo! + int.parse(inputAmountController.text);
                  ninetyTwo = ninetyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyTwo! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "3" &&
                    _btnSelectedVal == "Part") {
                  zeroThree = zeroThree == 0
                      ? int.parse(inputAmountController.text)
                      : zeroThree! + int.parse(inputAmountController.text);
                  thirtyOne = thirtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyOne! + int.parse(inputAmountController.text);
                  thirtyTwo = thirtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyTwo! + int.parse(inputAmountController.text);
                  thirtyThree = thirtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyThree! + int.parse(inputAmountController.text);
                  thirtyFour = thirtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFour! + int.parse(inputAmountController.text);
                  thirtyFive = thirtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFive! + int.parse(inputAmountController.text);
                  thirtySix = thirtySix == 0
                      ? int.parse(inputAmountController.text)
                      : thirtySix! + int.parse(inputAmountController.text);
                  thirtySeven = thirtySeven == 0
                      ? int.parse(inputAmountController.text)
                      : thirtySeven! + int.parse(inputAmountController.text);
                  thirtyEight = thirtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyEight! + int.parse(inputAmountController.text);
                  thirtyNine = thirtyNine == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyNine! + int.parse(inputAmountController.text);

                  thirty = thirty == 0
                      ? int.parse(inputAmountController.text)
                      : thirty! + int.parse(inputAmountController.text);
                  thirteen = thirteen == 0
                      ? int.parse(inputAmountController.text)
                      : thirteen! + int.parse(inputAmountController.text);
                  twentyThree = twentyThree == 0
                      ? int.parse(inputAmountController.text)
                      : twentyThree! + int.parse(inputAmountController.text);
                  fourtyThree = fourtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyThree! + int.parse(inputAmountController.text);
                  fiftyThree = fiftyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyThree! + int.parse(inputAmountController.text);
                  sixtyThree = sixtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyThree! + int.parse(inputAmountController.text);
                  seventyThree = seventyThree == 0
                      ? int.parse(inputAmountController.text)
                      : seventyThree! + int.parse(inputAmountController.text);
                  eightyThree = eightyThree == 0
                      ? int.parse(inputAmountController.text)
                      : eightyThree! + int.parse(inputAmountController.text);
                  ninetyThree = ninetyThree == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyThree! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "4" &&
                    _btnSelectedVal == "Part") {
                  zeroFour = zeroFour == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFour! + int.parse(inputAmountController.text);
                  fourtyOne = fourtyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyOne! + int.parse(inputAmountController.text);
                  fourtyTwo = fourtyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyTwo! + int.parse(inputAmountController.text);
                  fourtyThree = fourtyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyThree! + int.parse(inputAmountController.text);
                  fourtyFour = fourtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFour! + int.parse(inputAmountController.text);
                  fourtyFive = fourtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFive! + int.parse(inputAmountController.text);
                  fourtySix = fourtySix == 0
                      ? int.parse(inputAmountController.text)
                      : fourtySix! + int.parse(inputAmountController.text);
                  fourtySeven = fourtySeven == 0
                      ? int.parse(inputAmountController.text)
                      : fourtySeven! + int.parse(inputAmountController.text);
                  fourtyEight = fourtyEight == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyEight! + int.parse(inputAmountController.text);
                  fourtyNine = fourtyNine == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyNine! + int.parse(inputAmountController.text);

                  fourty = fourty == 0
                      ? int.parse(inputAmountController.text)
                      : fourty! + int.parse(inputAmountController.text);
                  fourteen = fourteen == 0
                      ? int.parse(inputAmountController.text)
                      : fourteen! + int.parse(inputAmountController.text);
                  twentyFour = twentyFour == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFour! + int.parse(inputAmountController.text);
                  thirtyFour = thirtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFour! + int.parse(inputAmountController.text);
                  fiftyFour = fiftyFour == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyFour! + int.parse(inputAmountController.text);
                  sixtyFour = sixtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyFour! + int.parse(inputAmountController.text);
                  seventyFour = seventyFour == 0
                      ? int.parse(inputAmountController.text)
                      : seventyFour! + int.parse(inputAmountController.text);
                  eightyFour = eightyFour == 0
                      ? int.parse(inputAmountController.text)
                      : eightyFour! + int.parse(inputAmountController.text);
                  ninetyFour = ninetyFour == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyFour! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "5" &&
                    _btnSelectedVal == "Part") {
                  zeroFive = zeroFive == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFive! + int.parse(inputAmountController.text);
                  fiftyOne = fiftyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyOne! + int.parse(inputAmountController.text);
                  fiftyTwo = fiftyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyTwo! + int.parse(inputAmountController.text);
                  fiftyThree = fiftyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyThree! + int.parse(inputAmountController.text);
                  fiftyFour = fourtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFour! + int.parse(inputAmountController.text);
                  fiftyFive = fiftyFive == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyFive! + int.parse(inputAmountController.text);
                  fiftySix = fiftySix == 0
                      ? int.parse(inputAmountController.text)
                      : fiftySix! + int.parse(inputAmountController.text);
                  fiftySeven = fiftySeven == 0
                      ? int.parse(inputAmountController.text)
                      : fiftySeven! + int.parse(inputAmountController.text);
                  fiftyEight = fiftyEight == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyEight! + int.parse(inputAmountController.text);
                  fiftyNine = fiftyNine == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyNine! + int.parse(inputAmountController.text);

                  fifty = fifty == 0
                      ? int.parse(inputAmountController.text)
                      : fifty! + int.parse(inputAmountController.text);
                  fifteen = fifteen == 0
                      ? int.parse(inputAmountController.text)
                      : fifteen! + int.parse(inputAmountController.text);
                  twentyFive = twentyFive == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFive! + int.parse(inputAmountController.text);
                  thirtyFive = thirtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFive! + int.parse(inputAmountController.text);
                  fourtyFive = fourtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFive! + int.parse(inputAmountController.text);
                  sixtyFive = sixtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyFive! + int.parse(inputAmountController.text);
                  seventyFive = seventyFive == 0
                      ? int.parse(inputAmountController.text)
                      : seventyFive! + int.parse(inputAmountController.text);
                  eightyFive = eightyFive == 0
                      ? int.parse(inputAmountController.text)
                      : eightyFive! + int.parse(inputAmountController.text);
                  ninetyFive = ninetyFive == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyFive! + int.parse(inputAmountController.text);
                } else if (inputNumberController.text == "6" &&
                    _btnSelectedVal == "Part") {
                  zeroFive = zeroFive == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFive! + int.parse(inputAmountController.text);
                  fiftyOne = fiftyOne == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyOne! + int.parse(inputAmountController.text);
                  fiftyTwo = fiftyTwo == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyTwo! + int.parse(inputAmountController.text);
                  fiftyThree = fiftyThree == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyThree! + int.parse(inputAmountController.text);
                  fiftyFour = fourtyFour == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFour! + int.parse(inputAmountController.text);
                  fiftyFive = fiftyFive == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyFive! + int.parse(inputAmountController.text);
                  fiftySix = fiftySix == 0
                      ? int.parse(inputAmountController.text)
                      : fiftySix! + int.parse(inputAmountController.text);
                  fiftySeven = fiftySeven == 0
                      ? int.parse(inputAmountController.text)
                      : fiftySeven! + int.parse(inputAmountController.text);
                  fiftyEight = fiftyEight == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyEight! + int.parse(inputAmountController.text);
                  fiftyNine = fiftyNine == 0
                      ? int.parse(inputAmountController.text)
                      : fiftyNine! + int.parse(inputAmountController.text);

                  fifty = fifty == 0
                      ? int.parse(inputAmountController.text)
                      : fifty! + int.parse(inputAmountController.text);
                  fifteen = fifteen == 0
                      ? int.parse(inputAmountController.text)
                      : fifteen! + int.parse(inputAmountController.text);
                  twentyFive = twentyFive == 0
                      ? int.parse(inputAmountController.text)
                      : twentyFive! + int.parse(inputAmountController.text);
                  thirtyFive = thirtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : thirtyFive! + int.parse(inputAmountController.text);
                  fourtyFive = fourtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : fourtyFive! + int.parse(inputAmountController.text);
                  sixtyFive = sixtyFive == 0
                      ? int.parse(inputAmountController.text)
                      : sixtyFive! + int.parse(inputAmountController.text);
                  seventyFive = seventyFive == 0
                      ? int.parse(inputAmountController.text)
                      : seventyFive! + int.parse(inputAmountController.text);
                  eightyFive = eightyFive == 0
                      ? int.parse(inputAmountController.text)
                      : eightyFive! + int.parse(inputAmountController.text);
                  ninetyFive = ninetyFive == 0
                      ? int.parse(inputAmountController.text)
                      : ninetyFive! + int.parse(inputAmountController.text);
                }
                //ForTop
                else if (inputNumberController.text == "0" &&
                    _btnSelectedVal == "Top") {
                  zeroOne = zeroOne == 0
                      ? int.parse(inputAmountController.text)
                      : zeroOne! + int.parse(inputAmountController.text);
                  zeroTwo = zeroTwo == 0
                      ? int.parse(inputAmountController.text)
                      : zeroTwo! + int.parse(inputAmountController.text);
                  zeroThree = zeroThree == 0
                      ? int.parse(inputAmountController.text)
                      : zeroThree! + int.parse(inputAmountController.text);
                  zeroFour = zeroFour == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFour! + int.parse(inputAmountController.text);
                  zeroFive = zeroFive == 0
                      ? int.parse(inputAmountController.text)
                      : zeroFive! + int.parse(inputAmountController.text);
                  zeroSixth = zeroSixth == 0
                      ? int.parse(inputAmountController.text)
                      : zeroSixth! + int.parse(inputAmountController.text);
                  zeroSeven = zeroSeven == 0
                      ? int.parse(inputAmountController.text)
                      : zeroSeven! + int.parse(inputAmountController.text);
                  zeroEight = zeroEight == 0
                      ? int.parse(inputAmountController.text)
                      : zeroEight! + int.parse(inputAmountController.text);
                  zeroNine = zeroNine == 0
                      ? int.parse(inputAmountController.text)
                      : zeroNine! + int.parse(inputAmountController.text);
                }

                //ForBehind

                else if (inputNumberController.text == "0" &&
                    _btnSelectedVal == "Behind") {
                  ten = ten == 0
                      ? int.parse(inputAmountController.text)
                      : ten! + int.parse(inputAmountController.text);
                  twenty = twenty == 0
                      ? int.parse(inputAmountController.text)
                      : twenty! + int.parse(inputAmountController.text);
                  thirty = thirty == 0
                      ? int.parse(inputAmountController.text)
                      : thirty! + int.parse(inputAmountController.text);
                  fourty = fourty == 0
                      ? int.parse(inputAmountController.text)
                      : fourty! + int.parse(inputAmountController.text);
                  fifty = fifty == 0
                      ? int.parse(inputAmountController.text)
                      : fifty! + int.parse(inputAmountController.text);
                  sixty = sixty == 0
                      ? int.parse(inputAmountController.text)
                      : sixty! + int.parse(inputAmountController.text);
                  seventy = seventy == 0
                      ? int.parse(inputAmountController.text)
                      : seventy! + int.parse(inputAmountController.text);
                  eighty = eighty == 0
                      ? int.parse(inputAmountController.text)
                      : eighty! + int.parse(inputAmountController.text);
                  ninety = ninety == 0
                      ? int.parse(inputAmountController.text)
                      : ninety! + int.parse(inputAmountController.text);
                  zeroZero = zeroZero == 0
                      ? int.parse(inputAmountController.text)
                      : zeroZero! + int.parse(inputAmountController.text);
                }

                //ForOtherConditions
                else {
                  messageText = "Something Wrong !";
                }

                // Condition End
                String currentDateString =
                    DateFormat("dd-MM-yyyy").format(DateTime.now());

                //reference to document
                final dUser = FirebaseFirestore.instance
                    .collection('twodnumbers')
                    .doc(widget.id.isNotEmpty ? widget.id : null);
                String docID = '';
                if (widget.id.isNotEmpty) {
                  docID = widget.id;
                } else {
                  docID = dUser.id;
                }

                final jsonData = {
                  '00': zeroZero,
                  '01': zeroOne,
                  '02': zeroTwo,
                  "03": zeroThree,
                  "04": zeroFour,
                  "05": zeroFive,
                  "06": zeroSixth,
                  "07": zeroSeven,
                  "08": zeroEight,
                  "09": zeroNine,
                  "10": ten,
                  "11": eleven,
                  "12": twelve,
                  "13": thirteen,
                  "14": fourteen,
                  "15": fifteen,
                  "16": sixteen,
                  "17": seventeen,
                  "18": eighteen,
                  "19": nineteen,
                  "20": twenty,
                  "21": twentyOne,
                  "22": twentyTwo,
                  "23": twentyThree,
                  "24": twentyFour,
                  "25": twentyFive,
                  "26": twentySix,
                  "27": twentySeven,
                  "28": twentyEight,
                  "29": twentyNine,
                  "30": thirty,
                  "31": thirtyOne,
                  "32": thirtyTwo,
                  "33": thirtyThree,
                  "34": thirtyFour,
                  "35": thirtyFive,
                  "36": thirtySix,
                  "37": thirtySeven,
                  "38": thirtyEight,
                  "39": thirtyNine,
                  "40": fourty,
                  "41": fourtyOne,
                  "42": fourtyTwo,
                  "43": fourtyThree,
                  "44": fourtyFour,
                  "45": fourtyFive,
                  "46": fourtySix,
                  "47": fourtySeven,
                  "48": fourtyEight,
                  "49": fourtyNine,
                  "50": fifty,
                  "51": fiftyOne,
                  "52": fiftyTwo,
                  "53": fiftyThree,
                  "54": fiftyFour,
                  "55": fiftyFive,
                  "56": fiftySix,
                  "57": fiftySeven,
                  "58": fiftyEight,
                  "59": fiftyNine,
                  "60": sixty,
                  "61": sixtyOne,
                  "62": sixtyTwo,
                  "63": sixtyThree,
                  "64": sixtyFour,
                  "65": sixtyFive,
                  "66": sixtySix,
                  "67": sixtySeven,
                  "68": sixtyEight,
                  "69": sixtyNine,
                  "70": seventy,
                  "71": seventyOne,
                  "72": seventyTwo,
                  "73": seventyThree,
                  "74": seventyFour,
                  "75": seventyFive,
                  "76": seventySix,
                  "77": seventySeven,
                  "78": seventyEight,
                  "79": seventyNine,
                  "80": eighty,
                  "81": eightyOne,
                  "82": eightyTwo,
                  "83": eightyThree,
                  "84": eightyFour,
                  "85": eightyFive,
                  "86": eightySix,
                  "87": eightySeven,
                  "88": eightyEight,
                  "89": eightyNine,
                  "90": ninety,
                  "91": ninetyOne,
                  "92": ninetyTwo,
                  "93": ninetyThree,
                  "94": ninetyFour,
                  "95": ninetyFive,
                  "96": ninetySix,
                  "97": ninetySeven,
                  "98": ninetyEight,
                  "99": ninetyNine,
                  'id': docID,
                  "date": currentDateString,
                  "note": noteController.text == "" ? "" : noteController.text,
                };
                showProgressIndicator = true;

                if (widget.id.isEmpty) {
                  //create document and write data to firebase
                  await dUser.set(jsonData).then((value) {
                    // zeroZeroController.text = '';
                    // zeroZeroController.text = '';
                    // zeroZeroController.text = '';
                    showProgressIndicator = false;

                    setState(() {});
                  });

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Color.fromARGB(255, 9, 129, 33),
                      content: Center(
                          child: Text(
                        'Successfully created 2D List',
                        style: TextStyle(fontSize: 17),
                      ))));
                  Navigator.pop(context);
                } else {
                  if (inputNumberController.text.isEmpty ||
                          inputAmountController.text == "" ||
                          _btnSelectedVal == null
                      // emailController.text.isEmpty
                      ) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Color.fromARGB(255, 183, 25, 14),
                        content: Center(
                            child: Text(
                          'Please fill all fields ! ',
                          style: TextStyle(fontSize: 17),
                        ))));
                    showProgressIndicator = false;

                    setState(() {});
                  } else {
                    await dUser.update(jsonData).then((value) {
                      // nameController.text = '';
                      // ageController.text = '';
                      // emailController.text = '';
                      showProgressIndicator = false;
                      setState(() {});

                      if (messageText == "Something Wrong !") {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Color.fromARGB(255, 183, 25, 14),
                            content: Center(
                                child: Text(
                              'Please check 2D Number and 2D Type !',
                              style: TextStyle(fontSize: 17),
                            ))));
                        messageText = "";
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Color.fromARGB(255, 9, 129, 33),
                            content: Center(
                                child: Text(
                              'Your 2D number is successfully Updated',
                              style: TextStyle(fontSize: 17),
                            ))));
                        Navigator.pop(context);
                      }
                    });
                  }
                }
              },
              minWidth: double.infinity,
              height: 50,
              color: Color.fromARGB(255, 115, 7, 7),
              child: showProgressIndicator
                  ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : widget.id.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Update',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Create',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
            )
          ],
        ),
      ),
    );
  }
}
