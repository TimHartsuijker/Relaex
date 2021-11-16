import 'package:flutter/material.dart';

class Scenes extends StatelessWidget {
  const Scenes ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        // wit ruimte
        SizedBox(
          height: 900.0,
          width: 375.0,
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            // scrollbar scenes
            child: SceneConstructor(),
          ),
        ),
      ],
    );
  }
}

class SceneConstructor extends StatefulWidget {
  const SceneConstructor({Key? key}) : super(key: key);

  @override
  _SceneConstructorState createState() => _SceneConstructorState();
}

class _SceneConstructorState extends State<SceneConstructor> {
  List<bool> isActive = [];

  @override
  Widget build(BuildContext context) {
    final ScrollController _firstController = ScrollController();

    return Scrollbar(
      controller: _firstController,
      child: ListView.builder(
          controller: _firstController,
          itemCount: 11,
          itemBuilder: (BuildContext context, int index) {
            isActive.add(false);
            // return wat elke rij uit de scrollbar nodig heeft
            return GestureDetector(
              onTap: () => setState(() {
                /*if (isActive.any((element) => element == true && element != isActive[index])) {
                  isActive[isActive.indexWhere((element) => element == true)] = !isActive[isActive.indexWhere((element) => element == true)];
                }*/

                isActive[index] = !isActive[index];
              }),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                // naam scene
                child: Text(
                  'Scene $index',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: isActive[index] ? Colors.blue : Colors.white,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
