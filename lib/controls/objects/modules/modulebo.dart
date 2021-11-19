import 'package:flutter/material.dart';

class ModuleBO {
  int id = 0;
  String title = "";
  bool isActive = false;

  ModuleBO(this.id, this.title);
}

class ModuleConstructor extends StatefulWidget {
  final ModuleBO moduleBO;

  const ModuleConstructor({Key? key, required this.moduleBO}) : super(key: key);

  @override
  _ModuleConstructorState createState() => _ModuleConstructorState();
}

class _ModuleConstructorState extends State<ModuleConstructor> {

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        // detect een klik op de module
        GestureDetector(
          onTap: (() => setState(() => widget.moduleBO.isActive = !widget.moduleBO.isActive)
          ),
          child: Image.asset(
            widget.moduleBO.isActive ? 'assets/SmartPlugON.png' : 'assets/SmartPlugOFF.png',
            scale: 3,
          ),
          // plaatje smart plug
        ),
        // naam module
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Text(
            widget.moduleBO.title,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}