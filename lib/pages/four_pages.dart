import 'package:flutter/material.dart';

class FourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Oxxo'),
            
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/gabrielaportillo/galeria/master/images/image01.JPG', 'Teclado'),
                SizedBox(height: 15.0),
                _items('https://raw.githubusercontent.com/gabrielaportillo/galeria/master/images/image02.JPG', 'Escritorio'),
                SizedBox(height: 15.0),
                _items('https://raw.githubusercontent.com/gabrielaportillo/Misfotos/main/FotoFamilia-main/image05.JPG', 'Comida'),
                SizedBox(height: 15.0),
                _items('https://raw.githubusercontent.com/gabrielaportillo/Misfotos/main/FotoFamilia-main/image13.JPG', 'Comida asiatica'),
                SizedBox(height: 15.0),
                _items('https://raw.githubusercontent.com/gabrielaportillo/mis_imagenes/main/deporte.jpg', 'Deporte'),
                SizedBox(height: 15.0),
                _items('https://raw.githubusercontent.com/gabrielaportillo/mis_imagenes/main/usuario.jpg', 'Usuario'),
                SizedBox(height: 15.0),
              ],
            ),
          ), //fin de container
        )); //fin de materialApp
  } //fin de widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.redAccent,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
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