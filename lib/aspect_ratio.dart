import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Aspecter extends StatelessWidget {
  const Aspecter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AspectRatio(
        aspectRatio: 1 / 2,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.teal,
        ),
      )),
    );
  }
}
