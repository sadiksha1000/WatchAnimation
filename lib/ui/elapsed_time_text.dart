import 'package:flutter/material.dart';

class ElapsedTimeText extends StatelessWidget {
  const ElapsedTimeText({Key? key, required this.elapsed}) : super(key: key);
  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    final hundreds = (elapsed.inMilliseconds / 10) % 100;
    final seconds = elapsed.inSeconds % 60;
    final minutes = elapsed.inMinutes % 60;
    final hundredsStr = hundreds.toStringAsFixed(0).padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    const digitWidth = 12.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeDigit(minutesStr.substring(0, 1), width: digitWidth),
        SizedBox(width: 3),
        TimeDigit(minutesStr.substring(1, 2), width: digitWidth),
        SizedBox(width: 5),
        TimeDigit(':', width: 6),
        SizedBox(width: 5),
        TimeDigit(secondsStr.substring(0, 1), width: digitWidth),
        SizedBox(width: 3),
        TimeDigit(secondsStr.substring(1, 2), width: digitWidth),
        SizedBox(width: 5),
        TimeDigit('.', width: 6),
        SizedBox(width: 5),
        TimeDigit(hundredsStr.substring(0, 1), width: digitWidth),
        SizedBox(width: 3),
        TimeDigit(hundredsStr.substring(1, 2), width: digitWidth),
      ],
    );
  }
}

class TimeDigit extends StatelessWidget {
  const TimeDigit(this.text, {Key? key, required this.width}) : super(key: key);
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
