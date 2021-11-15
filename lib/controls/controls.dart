import 'package:flutter/material.dart';
import 'body.dart';

class Controls extends StatelessWidget {
  const Controls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff2d2629),
      body: Body(),
    );
  }
}