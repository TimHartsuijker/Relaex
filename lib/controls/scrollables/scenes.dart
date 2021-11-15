import 'package:flutter/material.dart';

class Scenes extends StatefulWidget {
  const Scenes({Key? key}) : super(key: key);

  @override
  _ScenesState createState() => _ScenesState();
}

class _ScenesState extends State<Scenes> {
  @override
  Widget build(BuildContext context) {
    Color textColor = const Color(0xffFFFFFF);
    final ScrollController _firstController = ScrollController();

    return Row(
      children: <Widget>[
        // wit ruimte
        SizedBox(
          height: 955,
          width: 375.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            // scrollbar scenes
            child: Scrollbar(
              controller: _firstController,
              child: ListView.builder(
                  controller: _firstController,
                  itemCount: 11,
                  itemBuilder: (BuildContext context, int index) {
                    // return wat elke rij uit de scrollbar nodig heeft
                    return GestureDetector(
                      onTap: () {
                        textColor = const Color(0xff000000);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        // naam scene
                        child: Text(
                          'Scene $index',
                          style: const TextStyle(
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}