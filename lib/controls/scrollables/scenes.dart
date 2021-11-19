import 'package:flutter/material.dart';
import 'package:relaex/controls/objects/scenes/scenemanager.dart';
class Scenes extends StatelessWidget {
  const Scenes({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    final ScrollController _firstController = ScrollController();

    return Scrollbar(
      controller: _firstController,
      child: ListView.builder(
        controller: _firstController,
        itemCount: SceneManager.scenes.length,
        itemBuilder: (BuildContext context, int index) {
          // return wat elke rij uit de scrollbar nodig heeft
          return SceneManager.scenes[index];
        },
      ),
    );
  }
}