//Sera criado a aestrutura de MODULO do 'modular'

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/splash_page/splash_page.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) => [];

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const SplashPage());
    r.child('/categoria', child: (context) => const CategoriaPage());
    //como adicionar modulos na rotas?
    // ModuleRoute('/categoria', module: CategoriaModule());
    // ModuleRoute('/', module: CategoriaModule());
  }
}
