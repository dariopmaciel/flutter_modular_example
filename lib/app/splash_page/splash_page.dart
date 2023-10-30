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
                //--->Args recupera pelo Modular.args.data
                Modular.to.pushNamed('/categoria',
                    arguments: 'Categoria Selecionada @@@');
              },
              child: const Text('Categoria Module'),
            ),
            //--------------------------
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria', arguments: 'Categoria Selecionada @@@');
                //ou
                //--->Args recupera pelo Modular.args.data
                Modular.to.pushNamed('/categoria/produto/ProdutoX/xyz');
              },
              child: const Text('Produto dentro de Categoria Module'),
            ),
            //--------------------------
            ElevatedButton(
                onPressed: () {
                  //Recupera pelo NamedParameters: regupera pelo args params
                  Modular.to.pushNamed('/produto/Produto_X/xyz',
                      arguments: 'Produto Selecionado @@@');
                },
                child: const Text("Produto Module")),
            ElevatedButton(
                onPressed: () {
                  //Recupera pelo Querry Parameters que recupera pelo QuerryParams
                  Modular.to.pushNamed('/produto/xyz?produto=Dario',
                      arguments: 'Produto Selecionado @@@');
                },
                child: const Text("Produto Query Param Module")),
          ],
        ),
      ),
    );
  }
}
