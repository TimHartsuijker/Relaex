import 'package:flutter/material.dart';
import '../scrollbar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 100.0,
              width: 455.0,
              color: const Color(0xff2d2629),
              child: const Text(
                'Scenes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.white,
                ),
              ),
            ),
            Scroll(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 125.0,
                width: 455.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Container(
          height: 1080.0,
          width: 5.0,
          color: Colors.grey,
        ),
        Container(
          height: 1080.0,
          width: 1100.0,
          color: const Color(0xff2d2629),
          child: const Text(
            'Bediening Verlichting',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 60.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 1080.0,
          width: 360.0,
          color: const Color(0xff2d2629),
          child: const Text(
            'Modules',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 60.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
