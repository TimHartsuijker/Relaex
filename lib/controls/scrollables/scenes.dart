import 'package:flutter/material.dart';

class Scenes extends StatelessWidget {
  Scenes({Key? key}) : super(key: key);
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            SizedBox(
              height: 955,
              width: 375.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Scrollbar(
                  controller: _firstController,
                  child: ListView.builder(
                      controller: _firstController,
                      itemCount: 11,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            'Scene $index',
                            style: const TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}