import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Portillo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Inicio(title: 'Gabriela Portillo'),
    ); //App Material
  } //Constructor
} //Clase MiApphat

class Inicio extends StatefulWidget {
  Inicio({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _InicioState createState() => _InicioState();
}
class _InicioState extends State<Inicio> {
  String elegirValor;
  List listItem = [
    '1997',
    '1998',
    '1999',
    '2000',
    '2001',
    '2002',
    '2003'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LimitedBox(
              maxWidth: 350.0,
              maxHeight: 300.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://raw.githubusercontent.com/gabrielaportillo/mis_imagenes/main/oxxo.jpg',
                  fit: BoxFit.cover,
                ),
              ), //fin de Imagen 
            ),

            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFF44336),
                  ),
                ),
                labelText: 'Nombre del usuario',
              ),
            ), //fin del campo de texto
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFF44336),
                  ),
                ),
                labelText: 'Apellidos del usuario',
              ),
            ), //fin de campo de texto
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFF44336),
                  ),
                ),
                labelText: 'Correo electronico',
              ),
            ), //fin de textField
            SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                new Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFF44336),
                        ),
                      ),
                      labelText: 'Fecha de nacimiento (Dia y Mes)',
                    ), //fin de Decoración de Textfield
                  ), //fin del TexField
                ),//fin de flexible
                SizedBox(
                  width: 16,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xFFF44336), width: 1), borderRadius: BorderRadius.circular(4)),
                  child: DropdownButton(
                    hint: Text(
                      "Año: ",
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
                    dropdownColor: Color(0xFF5BDBDBD),
                    icon: Icon(Icons.expand_more_rounded),
                    iconSize: 20,
                    underline: SizedBox(),
                    value: elegirValor,
                    onChanged: (newValue) {
                      setState(() {
                        elegirValor = newValue;
                      });
                    },
                    items: listItem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      ); //fin de Dropdown Menu Item
                    }).toList(),
                  ), //fin de Dropdown
                ), //fin de Contenedor de Dropdown
              ], //fin de Widgets dentro de Row
            ), //fin del cuarto Row
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Iniciar sesion'),
                  icon: Icon(Icons.check_rounded),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    minimumSize: Size(140, 50),
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Cancelar'),
                  icon: Icon(Icons.close_rounded),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    onPrimary: Colors.white,
                    minimumSize: Size(140, 50),
                  ),
                )
              ], //fin de hijos de Row
            ), //fin de row
          ], //fin de Widgets dentro de Columna
        ), //fin de Columna Principal
      ),//fin de body
    ); //fin del Scaffold
  } //fin del Constructor
} //fin de Clase Inicio