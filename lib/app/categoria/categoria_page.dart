import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  CategoriaPage({
    Key? key,
    // this.categoria,
  }) :
        //ou
        categoria = Modular.args?.data,
        super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
          //recuperando sem Modular
          // child: Text(widget.categoria ?? "Não foi enviado a Categoria")),
          //recuperando com modular
          child: Text(Modular.args?.data ?? "Não foi enviado a Categoria")),
    );
  }
}
