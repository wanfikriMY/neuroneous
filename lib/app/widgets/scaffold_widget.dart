import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  final String? appBarTitle;
  final Widget? pageBody;

  const ScaffoldWidget({
    Key? key,
    this.appBarTitle,
    this.pageBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle ?? ""),
      ),
      body: pageBody ??
          Container(
            child: Center(
              child: Text("Error"),
            ),
          ),
    );
  }
}
