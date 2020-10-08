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
          SizedBox(
            height: 15,
          ),
          Text(
            'Os',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: 'GrandHotel',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Signos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: 'GrandHotel',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.favorite,
            size: 100,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
