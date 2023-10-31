import 'package:flutter/material.dart';

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
            TextButton(onPressed: () {}, child: const Text("Get Preço"))
          ],
        ),
      ),
    );
  }
}
