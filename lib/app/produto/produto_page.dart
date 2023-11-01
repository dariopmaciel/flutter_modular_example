import 'package:flutter/material.dart';


class ProdutoPage extends StatefulWidget {
  final String? produto;
  ProdutoPage({super.key, this.produto});

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
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
            Text(widget.produto ?? "Nome não enviado"),
            ElevatedButton(
              onPressed: () {
                // var preco = Modular.get<PrecoModel>();
                // print('${preco.hashCode}');
              },
              child: const Text("Get Preço"),
            ),
          ],
        ),
      ),
    );
  }
}
