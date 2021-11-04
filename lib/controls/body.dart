import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2629),
      body: Stack(
        children: <Widget>[
          Row(
            children: [
              Container(
                height: 1080.0,
                width: 450.0,
                color: Colors.yellow,
                child: const Text(
                  'Scenes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 1080.0,
                width: 10.0,
                color: Colors.grey,
              ),
              Container(
                height: 1080.0,
                width: 1000.0,
                color: Colors.orange,
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
                width: 460.0,
                color: Colors.pink,
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
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 150.0,
              width: 450.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
