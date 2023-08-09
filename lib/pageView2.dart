import 'package:flutter/material.dart';
import 'package:pageview/pageViewWidget.dart';
class pageView2 extends StatefulWidget {
  const pageView2({super.key});

  @override
  State<pageView2> createState() => _pageView2State();
}

class _pageView2State extends State<pageView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageView2Body(),
    );
  }
}
class pageView2Body extends StatefulWidget {
  const pageView2Body({super.key});

  @override
  State<pageView2Body> createState() => _pageView2BodyState();
}

class _pageView2BodyState extends State<pageView2Body> {
  @override
  Widget build(BuildContext context) {
    return pageViewWidget(
      jsonPath: 'assets/lottie/plant.json',
      text: 'Best Plants',
    );
  }
}

