import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class TwoDViewScreen extends StatefulWidget {
  final String id;

  const TwoDViewScreen({
    super.key,
    this.id = '',
  });

  @override
  State<TwoDViewScreen> createState() => _TwoDViewScreenState();
}

class _TwoDViewScreenState extends State<TwoDViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 54, 81, 216),
          title: Center(child: Text("2D Detail View      ")),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 1));
            FirebaseFirestore.instance.collection('twodnumbers').snapshots();
            setState(() {});
          },
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('twodnumbers')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                List<QueryDocumentSnapshot<Object?>> obj = [];
                if (streamSnapshot.hasData) {
                  for (int i = 0; i < streamSnapshot.data!.docs.length; i++) {
                    if (streamSnapshot.data?.docs[i].id == widget.id) {
                      obj.add(streamSnapshot.data!.docs[i]);
                    }
                  }
                }

                return obj.isNotEmpty
                    ? SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "00",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["00"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        amountTextBorderColor: Colors.pink,
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "01",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["01"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "02",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["02"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "03",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["03"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "04",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["04"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "05",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["05"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "06",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["06"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "07",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["07"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "08",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["08"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "09",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["09"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "10",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["10"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "11",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["11"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "12",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["12"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "13",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["13"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "14",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["14"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "15",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["15"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "16",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["16"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "17",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["17"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "18",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["18"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "19",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["19"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "20",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["20"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "21",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["21"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "22",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["22"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "23",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["23"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "24",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["24"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "25",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["25"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "26",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["26"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "27",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["27"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "28",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["28"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "29",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["29"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "30",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["30"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "31",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["31"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "32",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["32"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "33",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["33"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "34",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["34"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "35",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["35"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "36",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["36"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "37",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["37"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "38",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["38"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "39",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["39"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "40",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["40"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "41",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["41"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "42",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["42"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "43",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["43"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "44",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["44"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "45",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["45"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "46",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["46"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "47",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["47"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "48",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["48"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "49",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["49"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "50",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["50"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "51",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["51"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "52",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["52"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "53",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["53"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "54",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["54"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "55",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["55"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "56",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["56"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "57",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["57"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "58",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["58"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "59",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["59"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "60",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["60"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "61",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["61"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "62",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["62"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "63",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["63"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "64",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["64"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "65",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["65"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "66",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["66"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "67",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["67"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "68",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["68"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "69",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["69"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "70",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["70"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "71",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["71"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "72",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["72"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "73",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["73"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "74",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["74"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "75",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["75"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "76",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["76"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "77",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["77"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "78",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["78"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "79",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["79"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "80",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["80"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "81",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["81"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "82",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["82"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "83",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["83"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "84",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["84"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "85",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["85"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "86",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["86"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "87",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["87"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "88",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["88"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "89",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["89"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "90",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["90"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "91",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["91"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "92",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["92"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "93",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["93"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "94",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["94"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    numberButton(
                                        numText: "95",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["95"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "96",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["96"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "97",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["97"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "98",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["98"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                    numberButton(
                                        numText: "99",
                                        numBgColor:
                                            Color.fromARGB(255, 54, 81, 216),
                                        numTxtColor: Colors.white,
                                        numWidth: 20,
                                        amountText: obj.first["99"].toString(),
                                        amountTextColor: Colors.black,
                                        // amountBgColor: Color.fromARGB(255, 54, 81, 216),
                                        cardBgColor: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 15),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Container(
                        child: Center(child: CircularProgressIndicator()));
              }),
        ));
  }
}

Widget numberButton(
    {String? numText,
    Color? numTxtColor,
    Color? numBgColor,
    double? numWidth,
    String? amountText,
    Color? amountTextColor,
    Color? amountTextBorderColor,
    Color? amountBgColor,
    Color? cardBgColor}) {
  return InkWell(
    onTap: () {
      // buttonPresed(btnText);
    },
    child: Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(10),
          color: cardBgColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade700,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(2, 2))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 35,
              // width: btnWidth,
              width: 35,
              decoration: BoxDecoration(
                color: amountText == "0"
                    ? numBgColor
                    : int.parse(amountText ?? "0") > 10000
                        ? Color.fromARGB(255, 184, 60, 76)
                        : Color.fromARGB(255, 31, 156, 91),
                borderRadius: BorderRadius.circular(50),
              ),

              child: Text(
                numText ?? "",
                style: TextStyle(
                    color: numTxtColor,
                    fontSize: numWidth,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 60,
              height: 25,
              child: Center(
                  child: Text(
                amountText ?? "",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: amountTextColor),
              )),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 54, 81, 216), width: 2),
                  color: amountBgColor,
                  borderRadius: BorderRadius.circular(7)),
            )
          ],
        ),
      ),
    ),
  );
}
