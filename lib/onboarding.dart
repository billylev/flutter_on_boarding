import 'package:flutter/material.dart';
import 'package:on_boarding/onboarding_one.dart';
import 'package:on_boarding/onboarding_two.dart';
import 'package:on_boarding/onboarding_three.dart';
import 'package:on_boarding/sliding_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _pageController = PageController(initialPage: 0);
  final ValueNotifier<double?> scollPositionNotifier = ValueNotifier(0);

  @override
  void initState() {
    _pageController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(controller: _pageController, children: [
        OnBoardingOne(pageNum: 0, scollPositionNotifier: scollPositionNotifier),
        OnBoardingTwo(pageNum: 1, scollPositionNotifier: scollPositionNotifier),
        OnBoardingThree(
            pageNum: 2, scollPositionNotifier: scollPositionNotifier)
      ]),
      Align(
        alignment: Alignment(0, 0.94),
        child: SlidingIndicator(
          indicatorCount: 3,
          notifier: scollPositionNotifier,
          activeIndicator: Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                  color: Color(0xffe47949),
                  borderRadius: BorderRadius.all(const Radius.circular(5.0)))),
          inActiveIndicator: Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(const Radius.circular(5.0)))),
          margin: 8,
          sizeIndicator: 10,
        ),
      )
    ]);
  }

  void _onScroll() {
    scollPositionNotifier.value = _pageController.page;
  }
}
