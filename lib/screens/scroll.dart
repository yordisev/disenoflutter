import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [Color(0xff5EE8C5), Color(0xff30BAD6)]));
    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Pagina1(),
          Pagina2(),
        ],
      ),
    ));
  }
}

class Pagina1 extends StatelessWidget {
  const Pagina1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Imagen(), TextoEncima()],
    );
  }
}

class TextoEncima extends StatelessWidget {
  const TextoEncima({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Jueves',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ],
      ),
    );
  }
}

class Imagen extends StatelessWidget {
  const Imagen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll.png')),
    );
  }
}

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Bienvenido',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff0098FA),
              shape: StadiumBorder(),
            ),
          ),
        ));
  }
}
