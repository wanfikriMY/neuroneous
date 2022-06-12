import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neuroneous/utilities/utils_utilities.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? mobileBuilder;
  final Widget? desktopBuilder;
  final Widget? fallbackErrorScreen;

  const ResponsiveLayout({
    Key? key,
    this.mobileBuilder,
    this.desktopBuilder,
    this.fallbackErrorScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (mobileBuilder != null && desktopBuilder != null) {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBuilder!;
        } else {
          return desktopBuilder!;
        }
      });
    } else {
      return fallbackErrorScreen ?? _defaultPage();
    }
  }

  Widget _defaultPage() {
    Utils().logWhenTag("ERROR", "no screen implementation found!!");
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.purple, Colors.orange],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [Text("Page Implementation Not Found!")],
            ),
          ),
        ),
      ),
    );
  }
}
