import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'HomePage.dart';

class OnboardingPage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("assets/images/1.png"),
          title: "Lets Travel",
          bodyWidget: Padding(
            padding: EdgeInsets.only(top: 10, right: 15, left: 15),
            child: Text(
                "Lorem ipsum dolor sit amet, \n consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                )),
          )),
      PageViewModel(
          image: Image.asset("assets/images/3.png"),
          title: "Plan a Trip",
          bodyWidget: Padding(
            padding: EdgeInsets.only(top: 10, right: 15, left: 15),
            child: Text(
                "Lorem ipsum dolor sit amet, \n consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                )),
          )),
      PageViewModel(
          image: Image.asset("assets/images/2.png"),
          title: "Find Destination",
          bodyWidget: Padding(
            padding: EdgeInsets.only(top: 10, right: 15, left: 15),
            child: Text(
                "Lorem ipsum dolor sit amet, \n consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                )),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: Text(
          "Done",
          style: TextStyle(color: Colors.black),
        ),
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        showNextButton: true,
        showSkipButton: true,
        next: Icon(Icons.arrow_forward),
        skip: Text("Skip"),
      ),
    );
  }
}
