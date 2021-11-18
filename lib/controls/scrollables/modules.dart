import 'package:flutter/material.dart';
import 'package:relaex/controls/objects/modules/modulemanager.dart';

class Modules extends StatelessWidget {
  const Modules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: const [
            // wit ruimte
            SizedBox(
              height: 1030,
              width: 335.0,
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                // scrollbar modules
                child: ModuleConstructor(),
              ),
            ),
          ],
        );
      },
    );
  }
}

class ModuleConstructor extends StatefulWidget {
  const ModuleConstructor({Key? key}) : super(key: key);

  @override
  _ModuleConstructorState createState() => _ModuleConstructorState();
}

class _ModuleConstructorState extends State<ModuleConstructor> {
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
          String title = ModuleManager.modules[index].title;
          // return wat elke rij uit de scrollbar nodig heeft
          return Column(
            children: [
              // detect een klik op de module
              GestureDetector(
                onTap: (() => setState(() => isActive[index] = !isActive[index])
                ),
                child: Image.asset(
                  isActive[index] ? 'assets/SmartPlugON.png' : 'assets/SmartPlugOFF.png',
                  scale: 3,
                ),
                // plaatje smart plug
              ),
              // naam module
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  '$title',
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
    );
  }
}