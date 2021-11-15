import 'package:flutter/material.dart';

class Modules extends StatelessWidget {
  Modules({Key? key}) : super(key: key);
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            // wit ruimte
            SizedBox(
              height: 1100,
              width: 330.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                // scrollbar modules
                child: Scrollbar(
                  controller: _firstController,
                  child: ListView.builder(
                    controller: _firstController,
                    itemCount: 11,
                    itemBuilder: (BuildContext context, int index) {
                      // return wat elke rij uit de scrollbar nodig heeft
                      return Column(
                        children: [
                          // detect een klik op de module
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/');
                            },
                            // plaatje smart plug
                            child: Image.asset(
                              'assets/SmartPlugOFF.png',
                              scale: 3,
                            ),
                          ),
                          // naam module
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(
                              'Module $index',
                              style: const TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
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