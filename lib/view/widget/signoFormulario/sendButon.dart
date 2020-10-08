import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  final Function() callBack;

  SendButton(this.callBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 60,
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Text(
            'Enviar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'GrandHotel',
            ),
          ),
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
        ),
        onPressed: () {
          callBack();
        },
      ),
    );
  }
}
