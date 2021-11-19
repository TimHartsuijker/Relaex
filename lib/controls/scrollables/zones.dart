import 'package:flutter/material.dart';
import 'package:relaex/controls/objects/zones/zonemanager.dart';

class Zone extends StatefulWidget {
  const Zone({Key? key}) : super(key: key);

  @override
  _ZoneState createState() => _ZoneState();
}

class _ZoneState extends State<Zone> {
  final ScrollController _firstController = ScrollController();
  List<bool> isActive = [];
  List<double> sliderValue = [];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            // witruimte
            SizedBox(
              height: 1030,
              width: 1200.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 50.0),
                // scrollbar besturing lichten
                child: Scrollbar(
                  controller: _firstController,
                  child: ListView.builder(
                    controller: _firstController,
                    itemCount: 11,
                    itemBuilder: (BuildContext context, int index) {
                      isActive.add(false);
                      sliderValue.add(0);
                      String title = ZoneManager.zones[index].title;
                      // return wat elke rij in de scrollbar moet hebben.
                      return Column(
                        children: [
                          Row(
                            children: [
                              // knop om lampen aan of uit te zetten
                              GestureDetector(
                                onTap: (() => setState(() => isActive[index] = !isActive[index])
                                ),
                                child: Image.asset(
                                  isActive[index] ? 'assets/powerButtonON.png' : 'assets/powerButtonOFF.png',
                                  scale: 4,
                                ),
                              ),

                              // naam lampen groep
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  title,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // slider rgb value
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              children: [
                                SliderTheme(
                                  data: const SliderThemeData(
                                    trackHeight: 1,
                                  ),
                                  child: Slider(
                                    value: sliderValue[index],
                                    onChanged: (newSliderValue) => setState(() => sliderValue[index] = newSliderValue),
                                    min: 0,
                                    max: 255,
                                  ),
                                ),
                                // knop om lichten op wit te zetten
                                Padding(
                                  padding: const EdgeInsets.only(left: 150.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20),
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
                                                'white',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          // knop om de snelheid van de instellingen te verhogen
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          // knop om de modus in te stellen
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20),
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
                                                'mode',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              // slider helderheid
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 40.0, bottom: 60),
                                child: Image.asset(
                                  'assets/BarBlack&White.png',
                                  scale: 1,
                                ),
                              ),
                              // slider hitte
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 35.0, bottom: 60),
                                child: Image.asset(
                                  'assets/BarHeat.png',
                                  scale: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 180.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        // knop om de snelheid van de instellingen te verhogen
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 60, right: 20),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              ),
                                              primary: const Color(0xff404040),
                                              minimumSize: const Size(120, 55),
                                              maximumSize: const Size(120, 55),
                                            ),
                                            onPressed: () {},
                                            child: const Text(
                                              'speed +',
                                              style: TextStyle(
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        // knop om de snelheid van de instellingen te verlagen
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 60, left: 20),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              ),
                                              primary: const Color(0xff404040),
                                              minimumSize: const Size(120, 55),
                                              maximumSize: const Size(120, 55),
                                            ),
                                            onPressed: () {},
                                            child: const Text(
                                              'speed -',
                                              style: TextStyle(
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
