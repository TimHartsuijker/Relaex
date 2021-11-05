import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 1000.0,
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
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Row(
                  children: <Widget>[
                    SizedBox(
                      height: 955,
                      width: 445.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Scrollbar(
                          isAlwaysShown: true,
                          controller: _firstController,
                          child: ListView.builder(
                              controller: _firstController,
                              itemCount: 100,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Scene $index',
                                    style: const TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
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
