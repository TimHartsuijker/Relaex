import 'package:flutter/material.dart';
import 'package:relaex/controls/scrollables/Scenes.dart';
import 'package:relaex/controls/scrollables/modules.dart';
import 'package:relaex/controls/scrollables/verlichting.dart';

const Color blackish = Color(0xff2d2629);

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
 Column(
                children: const [
                  // titelbalk scenes
                  SceneTitlebar(),
                  Scenes(),
                  SmalllAdminbar(),
                  ],

            ),
            // grijze balk tussen scenes en bediening verlichting
            Container(
              height: 1080.0,
              width: 5.0,
              color: Colors.grey,
            ),
            // titelbalk bediening verlichting
            Flexible(
              fit:  FlexFit.loose,
                child: Container(
                  height: 1080.0,
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
            ),

            Stack(
              children: const [
                // titelbalk modules
                ModuleTitlebar(),
                // scrollbar Modules
                Modules(),
              ],
            ),
          ],
        ),

        // scrollbar Verlichting
        Verlichting(),
        // witte achtergrond admin login
        Visibility(
          visible: isVisible,
          child: Container(
            height: 1080,
            width: 1920,
            color: const Color(0x50ffffff),
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
                      Align(alignment: Alignment.topLeft,
                        child: Padding(padding: const EdgeInsets.only(top: 15.0, left: 80.0),
                          child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                              const Color(0xff4f9ad4),
                              minimumSize:
                              const Size(150, 75),
                              maximumSize:
                              const Size(150, 75),
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
                      Align(alignment: Alignment.topLeft,
                        child: Padding(padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                          child:
                          GestureDetector(
                            onTap: () => setState(() => isVisible = false),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 40.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                  const Color(0xff404040),
                                  minimumSize:
                                  const Size(150, 75),
                                  maximumSize:
                                  const Size(150, 75),
                                ),
                                onPressed: () => setState(() => isVisible = false),

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
        Padding(
            padding: const EdgeInsets.only(left: 1375, top: 25),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary:
            const Color(0xff404040),
            minimumSize:
            const Size(120, 55),
            maximumSize:
            const Size(120, 55),
          ),
          onPressed: () {},
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

class SceneTitlebar extends StatelessWidget {
  const SceneTitlebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 375.0,
      color: blackish,
      child: const Text(
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

class SmalllAdminbar extends StatefulWidget {
  const SmalllAdminbar({Key? key}) : super(key: key);

  @override
  _SmalllAdminbarState createState() => _SmalllAdminbarState();
}

class _SmalllAdminbarState extends State<SmalllAdminbar> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return  // tandwiel en logo links onderin pagina
      Flexible(
        fit: FlexFit.loose,
        child: Align(
          alignment: Alignment.bottomLeft,
          // container tandwiel en logo
          child: Container(
            height: 110.0,
            width: 375.0,
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            color: blackish,
            child: Row(
              children: [
                // detect een klik op het tandwiel en maak de admin login zichtbaar.
                GestureDetector(
                  onTap: () => setState(() => isVisible = true),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 40.0),
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
      );
  }
}

class LightsTitlebar extends StatelessWidget {
  const LightsTitlebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class ModuleTitlebar extends StatelessWidget {
  const ModuleTitlebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 336,
      color: blackish,
      child: const Text(
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

