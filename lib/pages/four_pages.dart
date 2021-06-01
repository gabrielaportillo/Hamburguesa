import 'package:flutter/material.dart';

class FourdPage extends StatefulWidget {
  @override
  _FourdPageState createState() => _FourdPageState();
}

class _FourdPageState extends State<FourdPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Container(
                color: Colors.red[800],
                height: 200,
                width: 350,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepOrangeAccent[400],
                      Colors.deepOrangeAccent,
                      Colors.deepOrangeAccent[100],
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 35.0, bottom: 16),
                  child: Text(
                    'Somos tu mejor opcion',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.amber,
                      Colors.amber[400],
                      Colors.amber[300],
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Text(
                  'Bienvenido',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  print('sky');
                },
                child: Container(
                  width: 110,
                  height: 110,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.brown[50],
                        Colors.brown[100],
                        Colors.brown[200],
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: ImageIcon(
                    AssetImage("assets/images/corazon.png"),
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}