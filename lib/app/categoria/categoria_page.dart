import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  CategoriaPage({
    Key? key,
    this.categoria,
  })  :
        //ou
        // categoria = Modular.args?.data,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.categoria ?? "Não foi enviado a Categoria"),
            ElevatedButton(
              onPressed: () {
                var controller = Modular.get<CategoriaController>();
                print('Categoria Controller hashCode: ${controller.hashCode}');
              },
              child: const Text("Get Controller"),
            ),
          ],
        ),
      ),
      //recuperando com modular
      // child: Text(Modular.args?.data ?? "Não foi enviado a Categoria")),
    );
  }
}
