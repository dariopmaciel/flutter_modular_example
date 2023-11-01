import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';
import 'package:flutter_modular_example/app/categoria/model/x.dart';

import 'package:flutter_modular_example/app/produto/produto_module.dart';

class CategoriaModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(X.new);
    i.addLazySingleton(PrecoModel.new);
    i.addLazySingleton(CategoriaController.new);
  }
  

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => CategoriaPage());
    // r.child('/', child: (context) => CategoriaPage(key: r.args.data,));
    r.module('/produto', module: ProdutoModule());
    // super.routes(r);
  }
}
