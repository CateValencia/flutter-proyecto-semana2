import 'package:flutter/material.dart';
import 'resultados.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _estatura = 166;
  int peso = 62;
  int edad = 38;
  bool genero = false;
  String sexo = "";

  List<Map<String, dynamic>> clasificacionIMC = [];

  _HomePageState() {
    clasificacionIMC.add({
      "textoIMC": "Bajo Peso",
      "rangoMinimo": 0,
      "rangoMaximo": 18.4,
      "mensajeIMC": "Ten cuidado estás bajo de peso!, debes alimentarte bien!",
      "color": Colors.orange[700],
    });

    clasificacionIMC.add({
      "textoIMC": "Normal",
      "rangoMinimo": 18.5,
      "rangoMaximo": 24.9,
      "mensajeIMC": "Tienes un peso corporal normal. ¡Buen trabajo!",
      "color": Colors.green[700],
    });

    clasificacionIMC.add({
      "textoIMC": "Sobrepeso",
      "rangoMinimo": 25.0,
      "rangoMaximo": 29.9,
      "mensajeIMC":
          "Estás muy cerca de tu peso ideal! Debes trabajar un poco más.",
      "color": Colors.orange,
    });

    clasificacionIMC.addAll([
      {
        "textoIMC": "Obesidad Grado I",
        "rangoMinimo": 30.0,
        "rangoMaximo": 34.5,
        "mensajeIMC":
            "Ten cuidado con tu salud! Alimentate bien y realiza ejercicio.",
        "color": Colors.orange[700],
      },
      {
        "textoIMC": "Obesidad Grado II",
        "rangoMinimo": 35.0,
        "rangoMaximo": 39.9,
        "mensajeIMC":
            "Ten cuidado! Tu salud está en riesgo, acude al nutricionista.",
        "color": Colors.orange[900],
      },
      {
        "textoIMC": "Obesidad Grado III",
        "rangoMinimo": 40.0,
        "rangoMaximo": 100.1,
        "mensajeIMC":
            "¡Atención! Necesitas mejorar tu alimentación y más ejercicio, debes bajar de peso y acudir con tu nutricionista.",
        "color": Colors.red[900],
      }
    ]);
  }

  void _aumentaEdad() {
    setState(() {
      edad++;
    });
  }

  void _disminuyeEdad() {
    setState(() {
      edad--;
    });
  }

  void _disminuyePeso() {
    setState(() {
      peso--;
    });
  }

  void _aumentaPeso() {
    setState(() {
      peso++;
    });
  }

  dynamic getResultado() {
    double resultadoIMC = peso / ((_estatura / 100) * (_estatura / 100));
    var resultado;

    clasificacionIMC.forEach((claseimc) {
      double min = claseimc['rangoMinimo'];
      double max = claseimc['rangoMaximo'];
      if (min <= resultadoIMC && max >= resultadoIMC) {
        resultado = {
          "resultadoIMC": resultadoIMC.toStringAsFixed(1).toString(),
          "mensajeIMC": claseimc['mensajeIMC'],
          "textoIMC": claseimc['textoIMC'],
          "color": claseimc['color']
        };
      }
    });

    return resultado;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 160,
            width: 160,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF1c1d32), // background
                  onPrimary: Colors.white,
                ), // foreground
                onPressed: () {
                  setState(() {
                    sexo = "Hombre";
                    genero = true;
                  });
                },
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.50),
                    child: new Image.asset("assets/male.png", height: 80),
                  ),
                  Text("Hombre")
                ])),
          ),
          Container(
            height: 160,
            width: 160,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF1c1d32), // background
                  onPrimary: Colors.white,
                ), // foreground
                onPressed: () {
                  setState(() {
                    sexo = "Hombre";
                    genero = true;
                  });
                },
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Image.asset("assets/female.png", height: 80),
                  ),
                  Text("Mujer")
                ])),
          )
        ],
      ),
      Expanded(
          child: Container(
        height: 50,
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: const Color(0xFF1c1d32),
          borderRadius: BorderRadius.circular(10),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              "Estatura",
              style: TextStyle(color: Colors.white30, fontSize: 20),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              _estatura.round().toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            Text("cm", style: TextStyle(color: Colors.white30, fontSize: 20))
          ]),
          SliderTheme(
            data: SliderThemeData(
                activeTrackColor: Colors.white,
                thumbColor: Colors.pinkAccent[400],
                overlayColor: Colors.pink.withOpacity(0.2),
                inactiveTrackColor: Colors.white24,
                valueIndicatorColor: Colors.pinkAccent[400]),
            child: Slider(
              value: _estatura,
              min: 100,
              max: 300,
              divisions: 100,
              label: _estatura.round().toString() + "  cm",
              onChanged: (double value) {
                setState(() {
                  _estatura = value;
                });
              },
            ),
          )
        ]),
      )),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: const Color(0xFF1c1d32),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Peso",
                          style: TextStyle(color: Colors.white30, fontSize: 20),
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          peso.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        )
                      ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: FloatingActionButton(
                        onPressed: _disminuyePeso,
                        child:
                            Icon(Icons.remove, color: Colors.white, size: 32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: FloatingActionButton(
                        onPressed: _aumentaPeso,
                        child: Icon(Icons.add, color: Colors.white, size: 32),
                      ),
                    )
                  ])
                ]),
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: const Color(0xFF1c1d32),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Edad",
                          style: TextStyle(color: Colors.white30, fontSize: 20),
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          edad.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        )
                      ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: FloatingActionButton(
                        onPressed: _disminuyeEdad,
                        child:
                            Icon(Icons.remove, color: Colors.white, size: 32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: FloatingActionButton(
                        onPressed: _aumentaEdad,
                        child: Icon(Icons.add, color: Colors.white, size: 32),
                      ),
                    )
                  ])
                ]),
              )),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ResultadosPage(resultado: getResultado())));
            });
          },
          child: Container(
              height: 80,
              color: Colors.pinkAccent[400],
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "Calcular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ),
                    ])
              ])),
        ),
      ),
    ]);
  }
}
