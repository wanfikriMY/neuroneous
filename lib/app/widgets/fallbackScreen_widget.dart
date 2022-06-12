import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:neuroneous/utilities/utils_utilities.dart';

// * For under development screen
class DefaultDevScreen extends StatelessWidget {
  const DefaultDevScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.purple, Colors.pink],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Under Development",
              style: GoogleFonts.actor(
                  textStyle: TextStyle(fontSize: 60),
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            Lottie.network("https://assets10.lottiefiles.com/packages/lf20_xvmprung.json"),
          ],
        )),
      ),
    );
  }
}

// * screen not found/error
class DefaultErrorScreen extends StatelessWidget {
  const DefaultErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
