import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoPage extends StatelessWidget {
  final String? produto;
  const ProdutoPage({super.key, this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Modular.args?.data),
            
            Text(produto ?? "Nome não enviado"),
          ],
        ),
      ),
    );
  }
}
