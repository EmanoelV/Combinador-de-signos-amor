import 'dart:ui';

import 'package:flutter/material.dart';

class TelaResultado extends StatelessWidget {
  final String resultadoTitulo;
  final String resultadoTexto;
  TelaResultado(this.resultadoTitulo, this.resultadoTexto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => {
            Navigator.pop(context),
          },
        ),
        backgroundColor: Colors.redAccent,
        titleSpacing: 60,
        title: Text(
          'Resultado',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'GrandHotel',
          ),
        ),
      ),
      body: Container(
        height: 600,
        color: Colors.redAccent,
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.redAccent,
              child: Text(
                this.resultadoTitulo,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'GrandHotel',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(
                  color: Colors.white,
                  width: 4.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Text(
                this.resultadoTexto,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'GrandHotel',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
