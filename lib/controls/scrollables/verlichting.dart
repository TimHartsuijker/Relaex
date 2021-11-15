import 'package:flutter/material.dart';

class Verlichting extends StatelessWidget {
  Verlichting({Key? key}) : super(key: key);
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            SizedBox(
              height: 1100,
              width: 1600.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 500.0),
                child: Scrollbar(
                  controller: _firstController,
                  child: ListView.builder(
                    controller: _firstController,
                    itemCount: 11,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/powerButtonOFF.png',
                                scale: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'Lampengroep $index',
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/BarRGB.png',
                                  scale: 0.6,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 200.0),
                                  child: Row(
                                    children: [

                                      Column(
                                        children: [

                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20, right: 40),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    const Color(0xff404040),
                                                minimumSize:
                                                    const Size(100, 50),
                                                maximumSize:
                                                    const Size(100, 50),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'white',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, right: 40),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                ),
                                                primary:
                                                    const Color(0xff404040),
                                                minimumSize:
                                                    const Size(100, 50),
                                                maximumSize:
                                                    const Size(100, 50),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'speed +',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20, left: 40),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    const Color(0xff404040),
                                                minimumSize:
                                                    const Size(100, 50),
                                                maximumSize:
                                                    const Size(100, 50),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'mode',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, left: 40),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                ),
                                                primary:
                                                    const Color(0xff404040),
                                                minimumSize:
                                                    const Size(100, 50),
                                                maximumSize:
                                                    const Size(100, 50),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'speed -',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 40.0, bottom: 50),
                                child: Image.asset(
                                  'assets/BarBlack&White.png',
                                  scale: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 35.0, bottom: 50),
                                child: Image.asset(
                                  'assets/BarHeat.png',
                                  scale: 1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}