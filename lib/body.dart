import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/RelaexLogo.jpg',
              scale: 0.5,
            ),
            const Text(
              'Druk op het scherm om verder te gaan',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
      Navigator.pushNamed(context, '/controls');
        },
        child: Container(
          height: 1080,
          width: 1920,
          color: const Color(0x002d2629),
        ),
      ),
    ],
    );
  }
}