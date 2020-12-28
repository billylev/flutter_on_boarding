import 'package:flutter/material.dart';
import 'package:on_boarding/effects.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingTwo extends StatelessWidget {
  final ValueNotifier<double> scollPositionNotifier;
  final pageNum;

  const OnBoardingTwo({Key key, this.scollPositionNotifier, this.pageNum})
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
                    color: Colors.yellow[800],
                    borderRadius:
                        BorderRadius.all(const Radius.circular(40.0))))),
      ),
      Align(
          alignment: Alignment(-0.2, -0.45),
          child: SlideEffect(
              xOffset: 300,
              yOffset: 280,
              page: pageNum,
              notifier: scollPositionNotifier,
              child:
                  SvgPicture.asset('assets/speechbubble_1.svg', width: 200))),
      Align(
          alignment: Alignment(-0.2, -0.65),
          child: FadeEffect(
            page: pageNum,
            notifier: scollPositionNotifier,
            child: SlideEffect(
                xOffset: 300,
                yOffset: 0,
                page: pageNum,
                notifier: scollPositionNotifier,
                child: SvgPicture.asset('assets/heart.svg', width: 330)),
          )),
      Align(
          alignment: Alignment(0, 0.2),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: Text('Me = Messenger',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 26,
                      fontWeight: FontWeight.bold)))),
      Align(
          alignment: Alignment(0, 0.3),
          child: ScaleEffect(
              page: pageNum,
              notifier: scollPositionNotifier,
              child: Text('Quickly and easily chat with your friends.',
                  style: TextStyle(color: Colors.black54))))
    ]);
  }
}
