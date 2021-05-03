import 'package:flutter/material.dart';
import 'home-page.dart';

class ResultadosPage extends StatelessWidget {
  var resultado;

  ResultadosPage({required this.resultado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
          child: Text(
            "Resultado",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: const Color(0xFF1c1d32),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 160,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(resultado['textoIMC'].toString().toUpperCase(),
                            style: TextStyle(
                                color: resultado['color'],
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          resultado['resultadoIMC'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 85,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
                Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          resultado['mensajeIMC'],
                          style:TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                        )),
                      ]),
                ),
              ]),
            ),
          ]),
        )),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(
                          title: 'Calculadora IMC',
                        )));
          },
          child: Container(
              height: 80,
              color: Colors.pinkAccent[400],
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Calcular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ),
                    ])
              ])),
        ),
      ],
    );
  }
}
