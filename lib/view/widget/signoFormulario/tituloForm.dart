import 'package:flutter/material.dart';

class TituloForm extends StatelessWidget {
  @override
  Widget build(BuildContext vcontext) {
    return Container(
      child: Column(
        children: [
          Text(
            'Selecione',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: 'GrandHotel',
            ),
          ),
          Text(
            'Os',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: 'GrandHotel',
            ),
          ),
          Text(
            'Signos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: 'GrandHotel',
            ),
          ),
          Icon(
            Icons.favorite,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
