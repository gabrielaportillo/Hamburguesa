import 'package:flutter/material.dart';

class FourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar(
        backgroundColor: Color(0xFFF44336),
        centerTitle: true,
        title: Text(
          'OXXO',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/gabrielaportillo/mis_imagenes/main/dulces.jpg', 'Dulceria'),
                SizedBox(height: 15.0),
                _items('https://raw.githubusercontent.com/gabrielaportillo/mis_imagenes/main/limpieza.jpg', 'Limpieza'),
                SizedBox(height: 15.0),
                _items('https://raw.githubusercontent.com/gabrielaportillo/mis_imagenes/main/higiene.jpg', 'Higiene'),
                SizedBox(height: 15.0),
                _items('https://raw.githubusercontent.com/gabrielaportillo/mis_imagenes/main/bebidas.jpg', 'Bebidas'),
                SizedBox(height: 15.0),
              ],
            ),
          ), //fin de container
        )); //fin de materialApp
  } //fin de widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 15.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.orange[300],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 5.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //fin de mi tarjetaApp