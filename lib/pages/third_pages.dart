import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MI EJEMPLO",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity, //finvisualdensity
      ), //fin theme
      home: PaginaInicio(),
    ); //fin del returnmaterialapp
  } //finbuildmifotoapp
} //finclasefoto

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),

              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.orange,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Año con año nos hemos convertido en parte del estilo de vida de muchas personas, ya que en OXXO nos preocupamos por brindar una amplia oferta de productos y servicios que les sean útiles y prácticos para su vida diaria.',
                    style: TextStyle(fontSize: 18),
                  ),
                ), //fin child center
              ), //fin de el container nombre
              SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/gabrielaportillo/mis_imagenes/main/187021808_779446012960156_9068408711927547600_n.jpg"), alignment: Alignment.topCenter),
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 5.0,
                    ),
                  ),
                ), //fin de el decoration box
              ), //fin de el container foto
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ), //fin de el container del texto del grupo
            ], //fin del children
          ), //fin de la columna child
        ), //fin del bodycenter
      ), //finsinglechild
    ); //fin scaffold
  } //fin build widget pagina de inicio
} //fin clase pagina de inicio