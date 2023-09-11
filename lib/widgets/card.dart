import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _Tarjetas(
              icono: Icons.circle_notifications_rounded,
              color: Colors.indigo,
              texto: 'General',
            ),
            _Tarjetas(
              icono: Icons.circle_notifications_rounded,
              color: Colors.pink,
              texto: 'Pantera',
            ),
          ],
        ),
        TableRow(
          children: [
            _Tarjetas(
              icono: Icons.album_rounded,
              color: Colors.green,
              texto: 'Hojas',
            ),
            _Tarjetas(
              icono: Icons.recommend_outlined,
              color: Colors.deepOrangeAccent,
              texto: 'Nuevo Genero',
            ),
          ],
        ),
        TableRow(
          children: [
            _Tarjetas(
              icono: Icons.castle_rounded,
              color: Colors.blue,
              texto: 'General',
            ),
            _Tarjetas(
              icono: Icons.minor_crash_outlined,
              color: Colors.deepPurple,
              texto: 'Entretenimiento',
            ),
          ],
        ),
        TableRow(
          children: [
            _Tarjetas(
              icono: Icons.castle_rounded,
              color: Colors.blue,
              texto: 'General',
            ),
            _Tarjetas(
              icono: Icons.minor_crash_outlined,
              color: Colors.deepPurple,
              texto: 'Entretenimiento',
            ),
          ],
        ),
        // TableRow(
        //   children: [
        //     Text('tesxto nuemro 1'),
        //     Text('tesxto nuemro 1'),
        //     Container(),
        //   ],
        // ),
      ],
    );
  }
}

class _Tarjetas extends StatelessWidget {
  final IconData icono;
  final Color color;
  final String texto;
  const _Tarjetas(
      {super.key,
      required this.icono,
      required this.color,
      required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icono,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(texto, style: TextStyle(fontSize: 18, color: Colors.white)),
        ],
      ),
    );
  }
}
