import 'package:flutter/material.dart';
import 'package:relaex/controls/scrollables/Scenes.dart';
import 'package:relaex/controls/scrollables/modules.dart';
import 'package:relaex/controls/scrollables/verlichting.dart';

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
            Flexible(
              fit: FlexFit.loose,
              child: Stack(
                children: [
                  Container(
                    height: 100.0,
                    width: 455.0,
                    color: const Color(0xff2d2629),
                    child: const Text(
                      'Scenes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // Scrollbar Scenes
                  Scenes(),

                  Flexible(
                    fit: FlexFit.loose,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 100.0,
                        width: 455.0,
                        color: const Color(0xff2d2629),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  setState(() => isVisible = true),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 40.0),
                                child: Image.asset(
                                  'assets/cog.png',
                                  scale: 1.6,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/RelaexLogo.jpg',
                              scale: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1080.0,
              width: 5.0,
              color: Colors.grey,
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 1080.0,
                color: const Color(0xff2d2629),
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
              children: [
                Container(
                  height: 100.0,
                  width: 336,
                  color: const Color(0xff2d2629),
                  child: const Text(
                    'Modules',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                    ),
                  ),
                ),

                // scrollbar Modules
                Modules(),
              ],
            ),
          ],
        ),

        // scrollbar Verlichting
        Verlichting(),

        Visibility(
          visible: isVisible,
          child: Container(
            height: 1080,
            width: 1920,
            color: const Color(0x50ffffff),
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Center(
            child: Container(
              width: 800,
              height: 500,
              color: const Color(0xff060606),
              child: Column(
                children: [
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
                  const SizedBox(
                    width: 640,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                  const  Align(
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
      ],
    );
  }
}
