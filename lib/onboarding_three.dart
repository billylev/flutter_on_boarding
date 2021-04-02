import 'package:flutter/material.dart';
import 'package:on_boarding/effects.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingThree extends StatelessWidget {
  final ValueNotifier<double?>? scollPositionNotifier;
  final pageNum;

  const OnBoardingThree({Key? key, this.scollPositionNotifier, this.pageNum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment(0, -0.70),
        child: ScaleEffect(
            page: pageNum,
            notifier: scollPositionNotifier,
            child: Container(
                height: 260.0,
                width: 260.0,
                decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius:
                        BorderRadius.all(const Radius.circular(40.0))))),
      ),
      Align(
          alignment: Alignment(0.28, -0.35),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: RotateEffect(
                  notifier: scollPositionNotifier,
                  child: SvgPicture.asset('assets/picture.svg', width: 140)))),
      Align(
          alignment: Alignment(0.5, -0.75),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: RotateEffect(
                  notifier: scollPositionNotifier,
                  child: Transform.rotate(
                      angle: 0.3,
                      child:
                          SvgPicture.asset('assets/camera.svg', width: 120))))),
      Align(
          alignment: Alignment(-0.7, -0.55),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: RotateEffect(
                  notifier: scollPositionNotifier,
                  child: Transform.rotate(
                      angle: -0.3,
                      child:
                          SvgPicture.asset('assets/tablet.svg', width: 110))))),
      Align(
          alignment: Alignment(-0.7, -0.20),
          child: FadeEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: SlideEffect(
                  xOffset: 300,
                  yOffset: 200,
                  page: pageNum,
                  notifier: scollPositionNotifier,
                  child: SvgPicture.asset('assets/lines.svg', width: 110)))),
      Align(
          alignment: Alignment(0, 0.2),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: Text('Play your moment',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 26,
                      fontWeight: FontWeight.bold)))),
      Align(
          alignment: Alignment(0, 0.3),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: Text('Its not just a game, its social too',
                  style: TextStyle(color: Colors.black54))))
    ]);
  }
}
