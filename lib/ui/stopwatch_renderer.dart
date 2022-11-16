import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stopwatch_flutter/ui/clock_hand.dart';
import 'package:stopwatch_flutter/ui/clock_markers.dart';
import 'package:stopwatch_flutter/ui/elapsed_time_text.dart';

class StopwatchRenderer extends StatelessWidget {
  final Duration elapsed;
  final double radius;

  const StopwatchRenderer({
    Key? key,
    required this.elapsed,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (var i = 0; i < 60; i++)
          Positioned(
            left: radius,
            top: radius,
            child: ClockSecondsTickMarker(seconds: i, radius: radius),
          ),
        for (var i = 5; i <= 60; i += 5)
          Positioned(
              child: ClockTextMarker(value: i, maxValue: 60, radius: radius)),
        Positioned(
          top: radius,
          left: radius,
          child: ClockHand(
            rotationZAngle: pi + (2 * pi / 60000) * elapsed.inMilliseconds,
            handLength: radius,
            handThickness: 2,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: radius * 1.3,
          child: ElapsedTimeText(
            elapsed: elapsed,
          ),
        ),
      ],
    );
  }
}
