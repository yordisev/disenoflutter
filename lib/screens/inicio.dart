import 'package:disenoflutter/widgets/widget.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImagendeFondoScreen(),
          _TextoInicial(),
        ],
      ),
      bottomNavigationBar: BotonNavigationScreen(),
    );
  }
}

class _TextoInicial extends StatelessWidget {
  const _TextoInicial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TitulosScreen(),
          CardScreen(),
        ],
      ),
    );
  }
}
