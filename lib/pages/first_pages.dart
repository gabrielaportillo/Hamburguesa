import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage> {
  @override
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