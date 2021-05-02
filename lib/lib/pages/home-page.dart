import 'package:flutter/material.dart';


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
                                    ), Text("HOMBRE")
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
                    ), Text("MUJER")
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
      ]
    );
  }
}


