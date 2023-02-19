import 'package:flutter/cupertino.dart';

class Utils {
  Size getScreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  }
}
