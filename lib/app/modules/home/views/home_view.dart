import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:neuroneous/app/widgets/fallbackScreen_widget.dart';
import 'package:neuroneous/responsive/responsive_layout.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      fallbackErrorScreen: DefaultDevScreen(),
    );
  }
}
