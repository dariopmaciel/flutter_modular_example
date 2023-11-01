import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class CategoriaController {
  PrecoModel preco;
  CategoriaController({required this.preco}) {
    print("Categoria Controller ${hashCode}");
  }
}
