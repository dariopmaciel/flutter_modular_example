import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoPage extends StatelessWidget {
  final String? produto;
  const ProdutoPage({super.key, this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(produto ?? "Nome não enviado"),
          ],
        ),
      ),
    );
  }
}
