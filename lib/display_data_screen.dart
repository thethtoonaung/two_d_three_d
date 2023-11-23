import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:two_d_three_d/send_or_update_data.dart';
import 'package:two_d_three_d/two_d_view_screen.dart';
import 'package:device_info_plus/device_info_plus.dart';

// creating UI that will gather data and send it to firestore with means performing Flutter Firebase CRUD operations
class DisplayDataScreen extends StatefulWidget {
  DisplayDataScreen({Key? key}) : super(key: key);
  @override
  State<DisplayDataScreen> createState() => _DisplayDataScreenState();
}

class _DisplayDataScreenState extends State<DisplayDataScreen> {
  deviceinfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    print('Running on ${androidInfo.brand}');
    print('Running on ${androidInfo.model}');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    deviceinfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 60,
        height: 60,
        child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SendOrUpdateData()));
            },
            // backgroundColor: Colors.red.shade900,
            backgroundColor: Color.fromARGB(255, 88, 38, 174),
            child: Icon(
              Icons.add,
              size: 30,
            )),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 88, 38, 174),
        centerTitle: true,
        title: Text(
          '2D Lists',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('twodnumbers').snapshots(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          List<QueryDocumentSnapshot<Object?>> obj = [];
          if (streamSnapshot.hasData) {
            for (int i = 0; i < streamSnapshot.data!.docs.length; i++) {
              if (streamSnapshot.data?.docs[i].id != "b72nm18m8Po10ECPRTRE") {
                obj.add(streamSnapshot.data!.docs[i]);
              }
            }
          }

          return obj.isNotEmpty
              ? ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 41),
                  itemCount: obj.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext) => TwoDViewScreen(
                                    id: obj[index]['id'],
                                  )),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 20)
                                  .copyWith(bottom: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2,
                                        spreadRadius: 1,
                                        offset: Offset(2, 2))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        // Icon(
                                        //   Icons.person,
                                        //   size: 31,
                                        //   color: Colors.red.shade300,
                                        // ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Color.fromARGB(
                                                255, 88, 38, 174),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "2D",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              obj[index]['date'].toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              obj[index]['note'].toString(),
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 37, 18, 157)),
                                            ),
                                            // Text(
                                            //   streamSnapshot.data!.docs[index]['email'],
                                            //   style: TextStyle(
                                            //       fontSize: 12,
                                            //       fontWeight: FontWeight.w400),
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SendOrUpdateData(
                                                          // zeroZero: obj[index]
                                                          //     ['00'],
                                                          // zeroOne: obj[index]
                                                          //     ['01'],
                                                          // zeroTwo: obj[index]
                                                          //     ['02'],

                                                          zeroZero: obj[index]
                                                              ['00'],
                                                          zeroOne: obj[index]
                                                              ['01'],
                                                          zeroTwo: obj[index]
                                                              ['02'],
                                                          zeroThree: obj[index]
                                                              ['03'],
                                                          zeroFour: obj[index]
                                                              ['04'],
                                                          zeroFive: obj[index]
                                                              ['05'],
                                                          zeroSixth: obj[index]
                                                              ['06'],
                                                          zeroSeven: obj[index]
                                                              ['07'],
                                                          zeroEight: obj[index]
                                                              ['08'],
                                                          zeroNine: obj[index]
                                                              ['09'],
                                                          ten: obj[index]['10'],
                                                          eleven: obj[index]
                                                              ['11'],
                                                          twelve: obj[index]
                                                              ['12'],
                                                          thirteen: obj[index]
                                                              ['13'],
                                                          fourteen: obj[index]
                                                              ['14'],
                                                          fifteen: obj[index]
                                                              ['15'],
                                                          sixteen: obj[index]
                                                              ['16'],
                                                          seventeen: obj[index]
                                                              ['17'],
                                                          eighteen: obj[index]
                                                              ['18'],
                                                          nineteen: obj[index]
                                                              ['19'],
                                                          twenty: obj[index]
                                                              ['20'],
                                                          twentyOne: obj[index]
                                                              ['21'],
                                                          twentyTwo: obj[index]
                                                              ['22'],
                                                          twentyThree:
                                                              obj[index]['23'],
                                                          twentyFour: obj[index]
                                                              ['24'],
                                                          twentyFive: obj[index]
                                                              ['25'],
                                                          twentySix: obj[index]
                                                              ['26'],
                                                          twentySeven:
                                                              obj[index]['27'],
                                                          twentyEight:
                                                              obj[index]['28'],
                                                          twentyNine: obj[index]
                                                              ['29'],
                                                          thirty: obj[index]
                                                              ['30'],
                                                          thirtyOne: obj[index]
                                                              ['31'],
                                                          thirtyTwo: obj[index]
                                                              ['32'],
                                                          thirtyThree:
                                                              obj[index]['33'],
                                                          thirtyFour: obj[index]
                                                              ['34'],
                                                          thirtyFive: obj[index]
                                                              ['35'],
                                                          thirtySix: obj[index]
                                                              ['36'],
                                                          thirtySeven:
                                                              obj[index]['37'],
                                                          thirtyEight:
                                                              obj[index]['38'],
                                                          thirtyNine: obj[index]
                                                              ['39'],
                                                          fourty: obj[index]
                                                              ['40'],
                                                          fourtyOne: obj[index]
                                                              ['41'],
                                                          fourtyTwo: obj[index]
                                                              ['42'],
                                                          fourtyThree:
                                                              obj[index]['43'],
                                                          fourtyFour: obj[index]
                                                              ['44'],
                                                          fourtyFive: obj[index]
                                                              ['45'],
                                                          fourtySix: obj[index]
                                                              ['46'],
                                                          fourtySeven:
                                                              obj[index]['47'],
                                                          fourtyEight:
                                                              obj[index]['48'],
                                                          fourtyNine: obj[index]
                                                              ['49'],
                                                          fifty: obj[index]
                                                              ['50'],
                                                          fiftyOne: obj[index]
                                                              ['51'],
                                                          fiftyTwo: obj[index]
                                                              ['52'],
                                                          fiftyThree: obj[index]
                                                              ['53'],
                                                          fiftyFour: obj[index]
                                                              ['54'],
                                                          fiftyFive: obj[index]
                                                              ['55'],
                                                          fiftySix: obj[index]
                                                              ['56'],
                                                          fiftySeven: obj[index]
                                                              ['57'],
                                                          fiftyEight: obj[index]
                                                              ['58'],
                                                          fiftyNine: obj[index]
                                                              ['59'],
                                                          sixty: obj[index]
                                                              ['60'],
                                                          sixtyOne: obj[index]
                                                              ['61'],
                                                          sixtyTwo: obj[index]
                                                              ['62'],
                                                          sixtyThree: obj[index]
                                                              ['63'],
                                                          sixtyFour: obj[index]
                                                              ['64'],
                                                          sixtyFive: obj[index]
                                                              ['65'],
                                                          sixtySix: obj[index]
                                                              ['66'],
                                                          sixtySeven: obj[index]
                                                              ['67'],
                                                          sixtyEight: obj[index]
                                                              ['68'],
                                                          sixtyNine: obj[index]
                                                              ['69'],
                                                          seventy: obj[index]
                                                              ['70'],
                                                          seventyOne: obj[index]
                                                              ['71'],
                                                          seventyTwo: obj[index]
                                                              ['72'],
                                                          seventyThree:
                                                              obj[index]['73'],
                                                          seventyFour:
                                                              obj[index]['74'],
                                                          seventyFive:
                                                              obj[index]['75'],
                                                          seventySix: obj[index]
                                                              ['76'],
                                                          seventySeven:
                                                              obj[index]['77'],
                                                          seventyEight:
                                                              obj[index]['78'],
                                                          seventyNine:
                                                              obj[index]['79'],
                                                          eighty: obj[index]
                                                              ['80'],
                                                          eightyOne: obj[index]
                                                              ['81'],
                                                          eightyTwo: obj[index]
                                                              ['82'],
                                                          eightyThree:
                                                              obj[index]['83'],
                                                          eightyFour: obj[index]
                                                              ['84'],
                                                          eightyFive: obj[index]
                                                              ['85'],
                                                          eightySix: obj[index]
                                                              ['86'],
                                                          eightySeven:
                                                              obj[index]['87'],
                                                          eightyEight:
                                                              obj[index]['88'],
                                                          eightyNine: obj[index]
                                                              ['89'],
                                                          ninety: obj[index]
                                                              ['90'],
                                                          ninetyOne: obj[index]
                                                              ['91'],
                                                          ninetyTwo: obj[index]
                                                              ['92'],
                                                          ninetyThree:
                                                              obj[index]['93'],
                                                          ninetyFour: obj[index]
                                                              ['94'],
                                                          ninetyFive: obj[index]
                                                              ['95'],
                                                          ninetySix: obj[index]
                                                              ['96'],
                                                          ninetySeven:
                                                              obj[index]['97'],
                                                          ninetyEight:
                                                              obj[index]['98'],
                                                          ninetyNine: obj[index]
                                                              ['99'],

                                                          id: obj[index]['id'],
                                                          note: obj[index]
                                                              ['note'],
                                                        )));
                                          },
                                          child: Container(
                                            width: 45,
                                            height: 45,
                                            child: Icon(
                                              Icons.edit,
                                              color: Color.fromARGB(
                                                  255, 88, 38, 174),
                                              size: 23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    actionsPadding:
                                                        EdgeInsets.only(
                                                            bottom: 20),
                                                    content: new Text(
                                                      'Are you sure to delete this 2D list ?',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                    actions: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 30.0,
                                                                right: 30),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            InkWell(
                                                              child: Container(
                                                                height: 40,
                                                                width: 70,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                7),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            8,
                                                                            46,
                                                                            104)),
                                                                child: Center(
                                                                  child: Text(
                                                                    "Yes",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                              ),
                                                              onTap: () async {
                                                                Navigator.pop(
                                                                    context,
                                                                    'OK');
                                                                final docData = FirebaseFirestore
                                                                    .instance
                                                                    .collection(
                                                                        'twodnumbers')
                                                                    .doc(obj[
                                                                            index]
                                                                        ['id']);
                                                                await docData
                                                                    .delete();
                                                              },
                                                            ),
                                                            InkWell(
                                                              child: Container(
                                                                height: 40,
                                                                width: 70,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                7),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            104,
                                                                            8,
                                                                            35)),
                                                                child: Center(
                                                                  child: Text(
                                                                    "Cancel",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                              ),
                                                              onTap: () {
                                                                Navigator.pop(
                                                                  context,
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                });
                                          },
                                          child: Icon(
                                            Icons.delete,
                                            color: Colors.red.shade900,
                                            size: 23,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    );
                  }))
              // : Container(
              //     child: Center(
              //       child: CircularProgressIndicator(),
              //     ),
              //   );
              : Center(
                  child: Text(
                  "Click plus button and Create 2D list",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ));
        },
      ),
    );
  }
}
