import 'package:Caculadora_do_amor_signos/controller/signos.dart';
import 'package:Caculadora_do_amor_signos/view/telaRresultado.dart';
import 'package:flutter/material.dart';

class SignoFormulario extends StatefulWidget {
  SignoFormulario({Key key, this.title}) : super(key: key);

  final List<String> signosItems = Signo().listSignos;
  final signoConsulta = Signo();
  final String title;

  @override
  _SignoFormularioState createState() => _SignoFormularioState();
}

class _SignoFormularioState extends State<SignoFormulario> {
  var _signoSelecionado1 = 0;
  var _signoSelecionado2 = 0;
  //List<DropdownMenuItem<int>> _listaSigno = [];
  List<DropdownMenuItem> _listaSigno = [];

  void _gerarLista() {
    for (int i = 0; i < widget.signosItems.length; i++) {
      _listaSigno.add(
        DropdownMenuItem<int>(
          child: new Text(widget.signosItems[i]),
          value: i,
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _gerarLista();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        padding: EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
          bottom: 40,
        ),
        width: double.infinity,
        color: Colors.redAccent,
        child: Container(
          child: Column(
            children: <Widget>[
              Text(
                'Selecione',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Os',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Signos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.favorite,
                size: 80,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.redAccent,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: DropdownButton(
                        value: _signoSelecionado1,
                        items: _listaSigno,
                        onChanged: (value) {
                          setState(() {
                            _signoSelecionado1 = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: DropdownButton(
                        value: _signoSelecionado2,
                        items: _listaSigno,
                        onChanged: (value) {
                          setState(() {
                            _signoSelecionado2 = value;
                          });
                        },
                      ),
                    ),
                    FlatButton(
                      child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 40,
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Text(
                          'Enviar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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
                        setState(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TelaResultado(
                                  widget.signoConsulta.calcular(
                                      widget.signosItems[_signoSelecionado1],
                                      widget.signosItems[_signoSelecionado2]),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
