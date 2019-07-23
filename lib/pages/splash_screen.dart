import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushNamed(context, "/home"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget usado para EMPILHAR outros widgets
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                //Parametro do BoxDecoration para criar uma cor sólida
                color: Color.fromARGB(255, 255, 186, 92),
                //Parametro do BoxDecoration para criar um dêgrade.Obviamente, o degradê precisa de mais uma cor!
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 251, 140, 0),
                    Color.fromARGB(255, 255, 189, 69),
                    Color.fromARGB(255, 194, 94, 0),
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 90.0,
                  right: 60.0,
                ),
                child: Image.asset("images/pizza.png"),
              ),
              SizedBox(height: 20.0),
              Text(
                "Ma'que Pizza",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 26.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
    ;
  }
}
