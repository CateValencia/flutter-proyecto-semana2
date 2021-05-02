import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'resultados.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
double _estatura = 150;
int peso = 50;
int edad = 18;  
bool genero = false;
String sexo = "";
int codeColorFemenino =  0xFF3B3B3B;
int codeColorMasculino = 0xFF3B3B3B;

List<Map<String, dynamic>> clasificacionIMC = [
    {
      "textoIMC": "Bajo Peso",
      "valorMinimoRango": 0,
      "valorMaximoRango": 18.4,
      "mensajeIMC": "Ten cuidado estás bajo de peso!, debes alimentarte bien!",
      "color": Colors.orange[100],
    },
    {
      "textoIMC": "Peso normal",
      "valorMinimoRango": 18.5,
      "valorMaximoRango": 24.9,
      "mensaje": "Tienes un peso corporal normal. ¡Buen trabajo!",
      "color": Colors.green[100],
    },
    {
      "textoIMC": "Sobrepeso",
      "valorMinimoRango": 25.0,
      "valorMaximoRango": 29.9,
      "mensajeIMC": "Estás muy cerca de tu peso ideal! Debes trabajar un poco más.",
      "color": Colors.orange[100],
    },
    {
      "textoIMC": "Obesidad Grado 1",
      "valorMinimoRango": 30.0,
      "valorMaximoRango": 34.5,
      "mensajeIMC": "Ten cuidado con tu salud! Alimentate bien y realiza ejercicio.",
      "color": Colors.orange[800],
    },
    {
      "textoIMC": "Obesidad Grado 2",
      "valorMinimoRango": 35.0,
      "valorMaximoRango": 39.9,
      "mensajeIMC": "Ten cuidado! Tu salud está en riesgo, acude al nutricionista.",
      "color": Colors.orange[900],
    },
    {
      "textoIMC": "Obesidad Grado 3",
      "valorMinimoRango": 40.0,
      "valorMaximoRango": 100.1,
      "mensajeIMC": "¡Atención! Necesitas mejorar tu alimentación y más ejercicio, debes bajar de peso y acudir con tu nutricionista.",
      "color": Colors.red[900],
    },
  ];

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
  var resultado;
  
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 160,
                width: 160,
                child: ElevatedButton( 
                onPressed: () {
                      setState(() {
                      sexo = "Hombre";
                      codeColorFemenino = 0xFF3B3B3B;
                      codeColorMasculino = 0xFF3B3B3B; 
                      genero = false;
                      });
                    },
                  child: Column(
                      children: [Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new Image.asset("assets/male.png",
                                      height: 80),
                                    ), Text("Hombre")
                    ])),
                    ),
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFF1c1d32),
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: Column(
                      children: [Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new Image.asset("assets/female.png",
                                      height: 80),
                    ), Text("Mujer")
                  ])),
          
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1c1d32),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 160,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Estatura",
                                style: TextStyle(
                                    color: Colors.white30, fontSize: 20),
                              )
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _estatura.round().toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50),
                              ),
                              Text("cm",
                                  style: TextStyle(
                                      color: Colors.white30, fontSize: 20))
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
                                  max: 200,
                                  divisions: 100,
                                  label:
                                      _estatura.round().toString() +
                                          " cm",
                                  onChanged: (double value) {
                                    setState(() {
                                      _estatura = value;
                                    });
                                  },
                                ),
                              )
                      ]))),
            ),
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
                            style:
                                TextStyle(color: Colors.white30, fontSize: 20),
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
                            style:
                                TextStyle(color: Colors.white30, fontSize: 20),
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
                            ResultadosPage()));
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
      ]
    );
  }
}


