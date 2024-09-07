import 'package:flutter/material.dart';

class dScreen {
  static mobile(BuildContext context) {
    const double mobileWidthThreshold = 600.0;

    if (MediaQuery.of(context).size.width < mobileWidthThreshold) {
      return true;
    }
    return false;
  }
}
