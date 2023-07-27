import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class all_pro extends ChangeNotifier {
  bool p0 = false;
  bool p1 = false;
  bool p2 = false;
  bool p3 = false;
  bool p4 = false;
  bool p5 = false;
  bool p6 = false;
  bool p7 = false;
  bool p8 = false;
  bool all_true = false;

  P0(bool val) {
    p0 = val;
    notifyListeners();
  }

  P1(bool val) {
    p1 = val;
    notifyListeners();
  }

  P2(bool val) {
    p2 = val;
    notifyListeners();
  }

  P3(bool val) {
    p3 = val;
    notifyListeners();
  }

  P4(bool val) {
    p4 = val;
    notifyListeners();
  }

  P5(bool val) {
    p5 = val;
    notifyListeners();
  }

  P6(bool val) {
    p6 = val;
    notifyListeners();
  }

  P7(bool val) {
    p7 = val;
    notifyListeners();
  }

  P8(bool val) {
    p8 = val;
    notifyListeners();
  }

  all(bool val) {
    all_true = val;
    notifyListeners();
  }
}

check(bool val) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("complete", val);
}
