//Sera criado a aestrutura de MODULO do 'modular'

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/splash_page/splash_page.dart';

class AppModule extends Module {
  //Dependencias
  @override
  void binds(Injector i) => [];

//Rotas
  @override
  void routes(RouteManager r) {
    // r.child(Modular.initialRoute, child: (context) => const SplashPage());
    //ou
    r.child('/', child: (context) => const SplashPage());
    //sem passagem de argumento
    r.child('/categoria', child: (context) => CategoriaPage());
    //com passagem de argumento
    // r.child('/categoria', child: (context) => CategoriaPage(categoria: 'CASA'));
    //COM RECUPERAÇÃO DE ARGUMENTO
    // r.child('/categoria',
    //     child: (context) => CategoriaPage(categoria: r.args.data));

    super.routes(r);
  }
}
