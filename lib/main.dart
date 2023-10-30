import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/app_module.dart';
import 'package:flutter_modular_example/app/app_widget.dart';

// Com o conceito de modulo, não mais se carrega um widget. Carrega-se um modulo, contudo o flutter não entende 'Modulo', ele entende widgets, stateless widget e statefull widget.
// O modulo cria uma camada superior que passara para o runApp a pagina certa que é a pagina que se precisa carregar

void main() {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
