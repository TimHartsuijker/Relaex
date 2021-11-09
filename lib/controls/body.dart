import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Stack(
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
                        width: 375.0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: Scrollbar(
                            controller: _firstController,
                            child: ListView.builder(
                                controller: _firstController,
                                itemCount: 100,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(25.0),
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
              Flexible(
                fit: FlexFit.loose,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 125.0,
                    width: 455.0,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 1080.0,
          width: 5.0,
          color: Colors.grey,
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 1080.0,
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
        ),
        Stack(
          children: [
              Container(
                height: 1080.0,
                width: 336,
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


            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Row(
                    children: [
                      SizedBox(
                        height: 1100,
                        width: 330.0,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 100.0),
                          child: Scrollbar(
                            controller: _firstController,
                            child: ListView.builder(
                                controller: _firstController,
                                itemCount: 11,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/');
                                      },
                                      child: Image.asset(
                                        'assets/SmartPlugOFF.png',
                                        scale: 3,
                                      ),
                                    ),

                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Text(
                                          'Modulenaam $index',
                                          style: const TextStyle(
                                            fontSize: 25.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ),
                    ],
                  );

              },
            ),

          ],
        ),
      ],
    );
  }
}
