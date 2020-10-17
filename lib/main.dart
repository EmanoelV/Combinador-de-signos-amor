import './view/signoFormuario.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Combinador de Signos - Amor',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignoFormulario(title: 'Combinador de Signos - Amor'),
    );
  }
}
