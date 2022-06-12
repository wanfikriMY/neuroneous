import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:neuroneous/responsive/responsive_layout.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBuilder: mobileBody(), desktopBuilder: desktopBody());
  }

  Widget mobileBody() {
    return Scaffold();
  }

  Widget desktopBody() {
    return Scaffold();
  }
}
