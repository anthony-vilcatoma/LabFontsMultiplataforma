import 'package:flutter/material.dart';

void main() {
  runApp(ProductDetailsScreen());
}

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detalles del Producto'),
        ),
        body: ProductDetails(),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://www.apple.com/newsroom/images/2023/09/apple-debuts-iphone-15-and-iphone-15-plus/article/Apple-iPhone-15-lineup-hero-geo-230912_inline.jpg.large.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          Text(
            'Iphone 14 pro max',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
          SizedBox(height: 10),
          Text(
            '\$1000',
            style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
          ),
          SizedBox(height: 10),
          Text(
            'El iPhone, el icónico teléfono inteligente de Apple, es la elección definitiva para aquellos que buscan la combinación perfecta de estilo, rendimiento y funcionalidad. Con su elegante diseño y construcción premium, el iPhone no solo es un dispositivo tecnológico, sino una declaración de estilo. Equipado con el potente sistema operativo iOS, cada iPhone ofrece una experiencia de usuario fluida y segura, junto con un acceso rápido a una amplia gama de aplicaciones y servicios innovadores a través de la App Store de Apple.',
            style: TextStyle(fontSize: 16, fontFamily: 'Nunito'),
          ),
        ],
      ),
    );
  }
}
