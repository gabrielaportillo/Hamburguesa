import 'package:flutter/material.dart';

class FourPage extends StatefulWidget {
  @override
  _FourPageState createState() => _FourPageState();
}

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Empresa Oxxo',
        theme: ThemeData(
          //el fondo va dentro de el tema
          primarySwatch: Colors.red,
        ), //finthemedata
        //ruta de ventanas enganchar a los widgets
        
        home: Inicio()); //cierre de material app
  } //fin widget context
} //fin VeterinariaApp class