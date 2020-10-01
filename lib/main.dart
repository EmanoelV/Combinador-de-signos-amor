import 'package:flutter/material.dart';
import 'model/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignoFormulario(title: 'Calculo do amor - signos'),
    );
  }
}

class SignoFormulario extends StatefulWidget {
  SignoFormulario({Key key, this.title}) : super(key: key);

  final signosItems = Signo().retornarSignos();
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          width: double.infinity,
          color: Colors.redAccent,
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
              Column(
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
                        print('signo 1 : $_signoSelecionado1 ');
                        print('signo 2 : $_signoSelecionado2');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
