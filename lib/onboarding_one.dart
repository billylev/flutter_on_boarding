import 'package:flutter/material.dart';
import 'package:on_boarding/effects.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingOne extends StatelessWidget {
  final ValueNotifier<double> scollPositionNotifier;
  final pageNum;

  const OnBoardingOne({Key key, this.scollPositionNotifier, this.pageNum})
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
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.all(const Radius.circular(40.0))))),
      ),
      Align(
          alignment: Alignment(0.30, -0.35),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: RotateEffect(
                notifier: scollPositionNotifier,
                child: SvgPicture.asset('assets/game.svg', width: 120),
              ))),
      Align(
          alignment: Alignment(0, -0.75),
          child: SlideEffect(
              xOffset: 300,
              yOffset: 0,
              page: pageNum,
              notifier: scollPositionNotifier,
              child: ScaleEffect(
                page: pageNum,
                notifier: scollPositionNotifier,
                child: SvgPicture.asset('assets/star.svg', width: 340),
              ))),
      Align(
          alignment: Alignment(0, 0.2),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: Text('Enjoy Playing',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 26,
                      fontWeight: FontWeight.bold)))),
      Align(
          alignment: Alignment(0, 0.3),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: Text('Play games everywhere you want',
                  style: TextStyle(color: Colors.black54))))
    ]);
  }
}
