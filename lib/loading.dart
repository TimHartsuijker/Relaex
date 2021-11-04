import 'package:flutter/material.dart';
import 'body.dart';

class Loading extends StatelessWidget {
  final String title;

  const Loading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff2d2629),
      body: Body(),
    );
  }
}