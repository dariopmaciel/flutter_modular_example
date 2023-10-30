import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria', arguments: 'Categoria Selecionada @@@');
                //ou
                Modular.to.pushNamed('/categoria', arguments: 'Categoria Selecionada @@@');
                // Modular.to.pushNamed('/categoria');
              },
              child: const Text('Categoria Module'),
            )
          ],
        ),
      ),
    );
  }
}
