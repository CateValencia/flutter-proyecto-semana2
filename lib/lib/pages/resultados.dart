import 'package:flutter/material.dart';
import 'home-page.dart';

class ResultadosPage extends StatelessWidget {
  
 ResultadosPage();

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
        
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => 
                    HomePage(title: 'Calculadora IMC',)));
          },
          child: Container(
              height: 80,
              color: Colors.pink,
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Calcular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                    ])
              ])),
        ),
      ],
    );
  }









}
