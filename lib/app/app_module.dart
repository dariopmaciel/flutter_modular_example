//Sera criado a aestrutura de MODULO do 'modular'
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';

import 'package:flutter_modular_example/app/produto/produto_module.dart';
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
    //sem passagem de argumento para o modulo
    r.module('/categoria', module: CategoriaModule());
    //com passagem de argumento para o modulo
    // r.child('/categoria', child: (context) => CategoriaPage(categoria: 'CASA'));
    //COM RECUPERAÇÃO DE ARGUMENTO para o modulo
    // r.child('/categoria',
    //     child: (context) => CategoriaPage(categoria: r.args.data));
    r.module('/produto', module: ProdutoModule());

    super.routes(r);
  }
}
