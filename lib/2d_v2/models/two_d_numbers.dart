// final twoDNumbers = {
//   '00': zeroZero,
//   '01': zeroOne,
//   '02': zeroTwo,
//   "03": zeroThree,
//   "04": zeroFour,
//   "05": zeroFive,
//   "06": zeroSixth,
//   "07": zeroSeven,
//   "08": zeroEight,
//   "09": zeroNine,
//   "10": ten,
//   "11": eleven,
//   "12": twelve,
//   "13": thirteen,
//   "14": fourteen,
//   "15": fifteen,
//   "16": sixteen,
//   "17": seventeen,
//   "18": eighteen,
//   "19": nineteen,
//   "20": twenty,
//   "21": twentyOne,
//   "22": twentyTwo,
//   "23": twentyThree,
//   "24": twentyFour,
//   "25": twentyFive,
//   "26": twentySix,
//   "27": twentySeven,
//   "28": twentyEight,
//   "29": twentyNine,
//   "30": thirty,
//   "31": thirtyOne,
//   "32": thirtyTwo,
//   "33": thirtyThree,
//   "34": thirtyFour,
//   "35": thirtyFive,
//   "36": thirtySix,
//   "37": thirtySeven,
//   "38": thirtyEight,
//   "39": thirtyNine,
//   "40": fourty,
//   "41": fourtyOne,
//   "42": fourtyTwo,
//   "43": fourtyThree,
//   "44": fourtyFour,
//   "45": fourtyFive,
//   "46": fourtySix,
//   "47": fourtySeven,
//   "48": fourtyEight,
//   "49": fourtyNine,
//   "50": fifty,
//   "51": fiftyOne,
//   "52": fiftyTwo,
//   "53": fiftyThree,
//   "54": fiftyFour,
//   "55": fiftyFive,
//   "56": fiftySix,
//   "57": fiftySeven,
//   "58": fiftyEight,
//   "59": fiftyNine,
//   "60": sixty,
//   "61": sixtyOne,
//   "62": sixtyTwo,
//   "63": sixtyThree,
//   "64": sixtyFour,
//   "65": sixtyFive,
//   "66": sixtySix,
//   "67": sixtySeven,
//   "68": sixtyEight,
//   "69": sixtyNine,
//   "70": seventy,
//   "71": seventyOne,
//   "72": seventyTwo,
//   "73": seventyThree,
//   "74": seventyFour,
//   "75": seventyFive,
//   "76": seventySix,
//   "77": seventySeven,
//   "78": seventyEight,
//   "79": seventyNine,
//   "80": eighty,
//   "81": eightyOne,
//   "82": eightyTwo,
//   "83": eightyThree,
//   "84": eightyFour,
//   "85": eightyFive,
//   "86": eightySix,
//   "87": eightySeven,
//   "88": eightyEight,
//   "89": eightyNine,
//   "90": ninety,
//   "91": ninetyOne,
//   "92": ninetyTwo,
//   "93": ninetyThree,
//   "94": ninetyFour,
//   "95": ninetyFive,
//   "96": ninetySix,
//   "97": ninetySeven,
//   "98": ninetyEight,
//   "99": ninetyNine,
//   'id': docID,
//   "date": currentDateString,
//   "note": noteController.text == "" ? "" : noteController.text,
// };

class TwoDNumberModel {
  int? zeroZero;
  int? zeroOne;
  

  TwoDNumberModel(
      {this.zeroZero,
      this.zeroOne,
      });

  TwoDNumberModel.fromJson(Map<String, dynamic> json) {
    zeroZero = json['00'];
    zeroOne = json['01'];
    
    // blogType = json['blog_type'] != null
    //     ? BlogTypeModel.fromJson(json['blog_type'])
    //     : null;
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['00'] = zeroZero;
    data['01'] = zeroOne;
    
    // if (imageModel != null) {
    //   data['image'] = imageModel!.toJson();
    // }
    return data;
  }
}

