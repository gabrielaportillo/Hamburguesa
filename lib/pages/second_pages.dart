import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 65),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'MI OXXO',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ), //contenedor
                SizedBox(height: 10),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            child: new Image(
                              width: 250.0,
                              height: 165.1,
                              image: new AssetImage('assets/images/oxxo2.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText:"Correo electronico",
                        icon: Icon(Icons.email)
                      ),
                    ), //Campo de Texto
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText:"Contrase??a",
                        icon: Icon(Icons.vpn_key_rounded)
                      ),
                    ), //Campo de Texto
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(20.0),
                              primary: Colors.red,
                            ),
                            child: Text('Iniciar Sesi??n'),
                            onPressed: () {}), // Bot??n Login
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(20.0),
                              primary: Colors.black,
                            ),
                            child: Text('Cancelar'),
                            onPressed: () {}), // Bot??n Login
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}