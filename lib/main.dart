
import 'package:flutter/material.dart';
import 'loading/loading.dart';
import 'controls/controls.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Relaex';

    return MaterialApp(title: title, routes: {
      '/': (context) => const Loading(title: title),
      '/controls': (context) => const Controls(),
    });
  }
}