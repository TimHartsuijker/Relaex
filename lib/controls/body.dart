import 'package:flutter/material.dart';
import 'package:relaex/controls/scrollables/Scenes.dart';
import 'package:relaex/controls/scrollables/modules.dart';
import 'package:relaex/controls/scrollables/zones.dart';

const Color blackish = Color(0xff2d2629);
const double titlebarHeight = 85.0;

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SceneTitlebar(),
            Graybar(),
            LightsTitlebar(),
            ModuleTitlebar(),
          ],
        ),
        Row(
          children: const [
            Scenes(),
            Zone(),
            Modules(),
          ],
        ),
        const AdminPanel(),
      ],
    );
  }
}

class SceneTitlebar extends StatelessWidget {
  const SceneTitlebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: titlebarHeight,
      width: 375.0,
      child: Text(
        'Scenes',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 60.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Graybar extends StatelessWidget {
  const Graybar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1080.0,
      width: 5.0,
      color: Colors.grey,
    );
  }
}

class LightsTitlebar extends StatefulWidget {
  const LightsTitlebar({Key? key}) : super(key: key);

  @override
  _LightsTitlebarState createState() => _LightsTitlebarState();
}

class _LightsTitlebarState extends State<LightsTitlebar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 100.0),
          height: titlebarHeight,
          width: 980,
          color: blackish,
          child: const Text(
            'Bediening Verlichting',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 60.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 25.0, right: 100.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff404040),
              minimumSize: const Size(120, 55),
              maximumSize: const Size(120, 55),
            ),
            onPressed:  () {},
            child: const Text(
              'Alles uit',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class ModuleTitlebar extends StatelessWidget {
  const ModuleTitlebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: titlebarHeight,
      width: 335,
      child: Text(
        'Modules',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 60.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Align(
            alignment: Alignment.bottomLeft,
            // container tandwiel en logo
            child: Container(
              height: 110.0,
              width: 375.0,
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Row(
                children: [
                  // detect een klik op het tandwiel en maak de admin login zichtbaar.
                  GestureDetector(
                    onTap: () => setState(() => isVisible = true),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 40.0),
                      child: Image.asset(
                        'assets/cog.png',
                        scale: 1.6,
                      ),
                    ),
                  ),
                  // logo
                  Image.asset(
                    'assets/RelaexLogo.jpg',
                    scale: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: isVisible,
          child: GestureDetector(
            onTap: () => setState(() => isVisible = false),
            child: Container(
              height: 1080,
              width: 1920,
              color: const Color(0x50ffffff),
            ),
          ),
        ),
        // admin login
        Visibility(
          visible: isVisible,
          child: Center(
            // zwarte vak admin login
            child: Container(
              width: 800,
              height: 500,
              color: const Color(0xff060606),
              child: Column(
                children: [
                  // text "Administrator Login"
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Administrator Login',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // text "Een administrator kan de presets van de scenes permanent aanpassen"
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Een administrator kan de presets van de scenes permanent aanpassen',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff5b5b5b),
                        ),
                      ),
                    ),
                  ),
                  // text "E-mail"
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 80, top: 30.0),
                      child: Text(
                        'E-mail',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Color(0xff767a77),
                        ),
                      ),
                    ),
                  ),
                  // invulvak login
                  const SizedBox(
                    width: 640,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                  // text wachtwoord
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 80, top: 30.0),
                      child: Text(
                        'Wachtwoord',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Color(0xff767a77),
                        ),
                      ),
                    ),
                  ),
                  // invulvak wachtwoord
                  const SizedBox(
                    width: 640,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                  Row(
                    children: [
                      // login knop
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 80.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xff4f9ad4),
                              minimumSize: const Size(150, 75),
                              maximumSize: const Size(150, 75),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ),
                        ),
                      ),
                      // cancel knop die het administrator login scherm sluit
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                          child: GestureDetector(
                            onTap: () => setState(() => isVisible = false),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 40.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff404040),
                                  minimumSize: const Size(150, 75),
                                  maximumSize: const Size(150, 75),
                                ),
                                onPressed: () =>
                                    setState(() => isVisible = false),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(fontSize: 25.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


