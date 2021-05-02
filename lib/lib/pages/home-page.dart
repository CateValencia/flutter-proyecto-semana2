import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  

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
            
          ],
        ),
      ],
    );
  }
}
