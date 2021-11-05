import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  Scroll({Key? key}) : super(key: key);
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            SizedBox(
                height: 955,
                width: 445.0,
                child: Scrollbar(
                  isAlwaysShown: true,
                  controller: _firstController,
                  child: ListView.builder(
                      controller: _firstController,
                      itemCount: 100,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Scene $index',
                            style: const TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        );
                      }),
                )),
          ],
        );
      },
    );
  }
}
