import 'package:Caculadora_do_amor_signos/view/signoFormuario.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora do Amor - Signos',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignoFormulario(title: 'Calculo do Amor - Signos'),
    );
  }
}
