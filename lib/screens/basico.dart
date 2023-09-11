import 'package:flutter/material.dart';

class BasicoScreen extends StatelessWidget {
  const BasicoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Image(image: AssetImage('assets/imagenprincipal.png')),
        Titulo(),
        Iconos(),
        Texto(),
      ],
    ));
  }
}

class Titulo extends StatelessWidget {
  const Titulo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'pruebas de colocar el texto',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Este es Otro Texto',
              style: TextStyle(color: Colors.black45),
            ),
          ]),
          Expanded(child: Container()),
          Icon(Icons.star_rate, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class Iconos extends StatelessWidget {
  const Iconos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(
              Icons.call,
              size: 30,
              color: Colors.blue,
            ),
            Text('Call', style: TextStyle(color: Colors.blue)),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.map_sharp,
              size: 30,
              color: Colors.blue,
            ),
            Text('Route', style: TextStyle(color: Colors.blue)),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.share,
              size: 30,
              color: Colors.blue,
            ),
            Text('Share', style: TextStyle(color: Colors.blue)),
          ],
        ),
      ],
    );
  }
}

class Texto extends StatelessWidget {
  const Texto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
    );
  }
}
