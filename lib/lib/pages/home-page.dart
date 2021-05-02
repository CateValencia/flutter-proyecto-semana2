import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

double _estatura = 166;  

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
                decoration: BoxDecoration(
                  color: const Color(0xFF212122),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    children: [Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new Image.asset("assets/male.png",
                                      height: 80),
                                    ), Text("HOMBRE")
                    ])),
            Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFF212122),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                      children: [Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new Image.asset("assets/female.png",
                                      height: 80),
                    ), Text("MUJER")
                  ])),
          Padding(
          padding: const EdgeInsets.all(18.0),
          child: Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF212122),
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SliderTheme(
                                data: SliderThemeData(
                                    activeTrackColor: Colors.white,
                                    thumbColor: Colors.pink,
                                    overlayColor: Colors.pink.withOpacity(0.2),
                                    inactiveTrackColor: Colors.white24,
                                    valueIndicatorColor: Colors.pink),
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
                            ])
                      ]))),
            ),
          ],
        ),
      ],
    );
  }
}
