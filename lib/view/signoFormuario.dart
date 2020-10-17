import 'package:combinador_de_signos_amor/controller/signos.dart';
import 'package:combinador_de_signos_amor/model/data.dart';
import 'package:combinador_de_signos_amor/view/telaRresultado.dart';
import 'package:combinador_de_signos_amor/view/widget/signoFormulario/sendButon.dart';
import 'package:combinador_de_signos_amor/view/widget/signoFormulario/signoSelector.dart';
import 'package:combinador_de_signos_amor/view/widget/signoFormulario/tituloForm.dart';
import 'package:flutter/material.dart';

class SignoFormulario extends StatefulWidget {
  SignoFormulario({Key key, this.title}) : super(key: key);

  final List<String> signosItems = Signo().listSignos;
  final signoConsulta = Signo();
  final String title;
  final Data signo = new Data();

  @override
  _SignoFormularioState createState() => _SignoFormularioState();
}

class _SignoFormularioState extends State<SignoFormulario> {
  var _signoSelecionado1 = 0;
  var _signoSelecionado2 = 0;

  openResult() {
    widget.signo.receberSignos(widget.signosItems[_signoSelecionado1],
        widget.signosItems[_signoSelecionado2]);
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaResultado(
              widget.signo.resultadoTitulo, widget.signo.resultadoTexto),
        ),
      );
    });
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
        child: Column(
          children: <Widget>[
            TituloForm(),
            SignoSelector(
                _signoSelecionado1,
                (value) => setState(() {
                      _signoSelecionado1 = value;
                    })),
            SignoSelector(
                _signoSelecionado2,
                (value) => setState(() {
                      _signoSelecionado2 = value;
                    })),
            SendButton(openResult)
          ],
        ),
      ),
    );
  }
}
