import 'package:disenoflutter/screens/basico.dart';
import 'package:disenoflutter/screens/inicio.dart';
import 'package:disenoflutter/screens/scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'inicio',
      routes: {
        'inicio': (BuildContext context) => InicioScreen(),
        'basico': (BuildContext context) => BasicoScreen(),
        'scroll': (BuildContext context) => ScrollScreen(),
      },
    );
  }
}
