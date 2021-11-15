import 'package:flutter/material.dart';

class Scenes extends StatefulWidget {
  const Scenes({Key? key}) : super(key: key);

  @override
  _ScenesState createState() => _ScenesState();
}

class _ScenesState extends State<Scenes> {
  List<bool> isOn = [];

  @override
  Widget build(BuildContext context) {
    Color textColor;

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
                    isOn.add(false);
                    // return wat elke rij uit de scrollbar nodig heeft
                    return GestureDetector(
                      onTap: () => setState(() => isOn[index] = !isOn[index]),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        // naam scene
                        child: Text(
                          'Scene $index',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: isOn[index]
                                ? textColor = Colors.blue
                                : textColor = Colors.white,
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
