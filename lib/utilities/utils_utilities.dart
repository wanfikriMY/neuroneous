import 'dart:developer';

import 'package:flutter/foundation.dart';

class Utils {
  // * Check is web
  bool isWeb() {
    return kIsWeb;
  }

  void logWhenDebug(String tag, String message) {
    final callTime = DateTime.now();

    if (isWeb()) {
      print(
          "Log Output [$callTime]: $tag\n===============================================\n${message.toString()}\n===============================================");
    } else {
      log("Log Output [$callTime]: $tag\n===============================================\n${message.toString()}\n===============================================");
    }
  }

  void logWhenTag(String tag, String message) {
    if (isWeb()) {
      print("[$tag] => ${message.toString()}");
    } else {
      log("[$tag] => ${message.toString()}");
    }
  }
}
