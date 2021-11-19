import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SceneBO {
  int id = 0;
  String title = "";
  String description = "hallo ik ben de test description!";
  bool isActive = false;

  SceneBO(this.id, this.title);
}

class SceneConstructor extends StatefulWidget {
  final SceneBO sceneBO;
  
  const SceneConstructor({Key? key, required this.sceneBO}) : super(key: key);

  @override
  _SceneConstructorState createState() => _SceneConstructorState();
}

class _SceneConstructorState extends State<SceneConstructor> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => setState(() {
        widget.sceneBO.isActive = !widget.sceneBO.isActive;
      }),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0, right: 70.0),
        // naam scene
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                widget.sceneBO.title,
                style: TextStyle(
                  fontSize: 40.0,
                  color: widget.sceneBO.isActive ? Colors.blue : Colors.white,
                ),
              ),
            ),

            Text(
              widget.sceneBO.description,
              style: TextStyle(
                fontSize: 18.0,
                color: widget.sceneBO.isActive ? Colors.blue : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}