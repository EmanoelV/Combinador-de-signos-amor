import 'package:Caculadora_do_amor_signos/controller/signos.dart';
import 'package:flutter/material.dart';

@immutable
// ignore: must_be_immutable
class SignoSelector extends StatelessWidget {
  final int _signoSelecionado;
  List<DropdownMenuItem> _items;
  final List<String> listSignos = Signo().listSignos;
  final Function(int value) callBack;

  List<DropdownMenuItem> _gerarItems() {
    int ct = -1;
    return listSignos.map((signo) {
      ct++;
      return DropdownMenuItem(
        child: new Text(signo),
        value: ct,
      );
    }).toList();
  }

  SignoSelector(this._signoSelecionado, this.callBack) {
    _items = _gerarItems();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: _signoSelecionado,
        items: _items,
        onChanged: (value) => callBack(value),
      ),
    );
  }
}
