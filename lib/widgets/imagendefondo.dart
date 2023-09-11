import 'dart:math';

import 'package:flutter/material.dart';

class ImagendeFondoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
            colors: [Color(0xff2E305F), Color(0xff202333)]));
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: boxDecoration,
        ),
        Positioned(
          top: -100,
          left: -30,
          child: _CajaRosada(),
        ),
      ]),
    );
  }
}

class _CajaRosada extends StatelessWidget {
  const _CajaRosada({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            // color: Colors.pink,
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1),
              ],
            )),
      ),
    );
  }
}
