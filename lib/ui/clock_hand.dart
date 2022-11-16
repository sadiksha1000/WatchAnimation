import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClockHand extends StatelessWidget {
  final double rotationZAngle;
  final double handThickness;
  final double handLength;
  final Color color;

  const ClockHand({
    Key? key,
    required this.rotationZAngle,
    required this.handLength,
    required this.handThickness,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.topCenter,
      transform: Matrix4.identity()
        ..translate(-handThickness / 2, 0.0, 0.0)
        ..rotateZ(rotationZAngle),
      child: Container(
        height: handLength,
        width: handThickness,
        color: color,
      ),
    );
  }
}
