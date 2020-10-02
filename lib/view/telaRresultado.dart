import 'package:flutter/material.dart';

class TelaResultado extends StatelessWidget {
  final String resultado;
  TelaResultado(this.resultado);

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
          ),
        ),
      ),
      body: Container(
        child: Text(this.resultado),
      ),
    );
  }
}
