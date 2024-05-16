import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista Anidada',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NestedList(),
    );
  }
}

class NestedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Anidada'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Alimentos',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                title:
                    Text('Manzana', style: TextStyle(fontFamily: 'OpenSans')),
              ),
              ListTile(
                title:
                    Text('Plátano', style: TextStyle(fontFamily: 'OpenSans')),
              ),
              ListTile(
                title:
                    Text('Naranja', style: TextStyle(fontFamily: 'OpenSans')),
              ),
            ],
          ),
          ListTile(
            title: Text(
              'Animales',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                title: Text('Perro', style: TextStyle(fontFamily: 'Lato')),
              ),
              ListTile(
                title: Text('Gato', style: TextStyle(fontFamily: 'Lato')),
              ),
              ListTile(
                title: Text('Pájaro', style: TextStyle(fontFamily: 'Lato')),
              ),
            ],
          ),
          ListTile(
            title: Text(
              'Lugares',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                title: Text('París', style: TextStyle(fontFamily: 'Nunito')),
              ),
              ListTile(
                title:
                    Text('Nueva York', style: TextStyle(fontFamily: 'Nunito')),
              ),
              ListTile(
                title: Text('Tokio', style: TextStyle(fontFamily: 'Nunito')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
