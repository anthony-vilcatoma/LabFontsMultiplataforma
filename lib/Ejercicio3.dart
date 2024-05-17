import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Galería de Imágenes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  _buildImage('assets/images/platano.png', 'Platano'),
                  _buildImage('assets/images/manzana.jpg', 'Manzana'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  _buildImage('assets/images/naranja.png', 'Naranja'),
                  _buildImage('assets/images/computer.svg', 'Computadora'),
                ],
              ),
              Row(
                children: [
                  _buildImage('assets/images/platano.png', 'Platano'),
                  _buildImage('assets/images/platano.png', 'Platano'),
                ],
              ),
              Row(
                children: [
                  _buildImage('assets/images/platano.png', 'Platano'),
                  _buildImage('assets/images/platano.png', 'Platano'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath, String imageName) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 4.0),
        Text(
          imageName,
          style: TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}
