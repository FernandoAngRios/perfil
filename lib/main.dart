import 'package:flutter/material.dart';
import 'package:perfil1/src/perfil.dart';
import 'package:perfil1/src/prueba.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'registro',
      color: Colors.blue,
      routes: {
        'registro': (context) => R(),
        'registr': (context) => MyStatefulWidge(),
      },
    );
  }
}
