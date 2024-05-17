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
                leading: Image.asset('assets/images/manzana.jpg'),
                title:
                    Text('Manzana', style: TextStyle(fontFamily: 'OpenSans')),
              ),
              ListTile(
                leading: Image.asset('assets/images/platano.png'),
                title:
                    Text('Plátano', style: TextStyle(fontFamily: 'OpenSans')),
              ),
              ListTile(
                leading: Image.asset('assets/images/naranja.png'),
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
                leading: Image.network(
                  'https://img.freepik.com/fotos-premium/lindo-perro-saltando-fondo-aislado-transparente-ai_866663-11492.jpg?size=338&ext=jpg&ga=GA1.1.672697106.1715817600&semt=sph',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text('Perro', style: TextStyle(fontFamily: 'Lato')),
              ),
              ListTile(
                leading: Image.network(
                  'https://www.tiendanimal.es/articulos/wp-content/uploads/2018/01/que-necesita-un-gato-1200x800.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text('Gato', style: TextStyle(fontFamily: 'Lato')),
              ),
              ListTile(
                leading: Image.network(
                  'https://img.freepik.com/fotos-premium/golondrina-volando-alas-extendidas-pajaro-hirundo-rustica-volando-contra-fondo-blanco_191971-27965.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
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
                leading: Image.network(
                  'https://cdn.pixabay.com/photo/2018/04/25/09/26/eiffel-tower-3349075_640.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text('París', style: TextStyle(fontFamily: 'Nunito')),
              ),
              ListTile(
                leading: Image.network(
                  'https://media.istockphoto.com/id/1406960186/es/foto/el-horizonte-de-la-ciudad-de-nueva-york-estados-unidos.jpg?s=612x612&w=0&k=20&c=c3dsEmk2qDY4pAlD9KPLSo7pshKm7FOanMaIyzE3yjE=',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title:
                    Text('Nueva York', style: TextStyle(fontFamily: 'Nunito')),
              ),
              ListTile(
                leading: Image.network(
                  'https://img.freepik.com/foto-gratis/vista-aerea-paisaje-urbano-tokio-montana-fuji-japon_335224-148.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text('Tokio', style: TextStyle(fontFamily: 'Nunito')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
