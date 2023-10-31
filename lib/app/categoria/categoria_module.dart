import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';
import 'package:flutter_modular_example/app/categoria/model/x.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';

class CategoriaModule extends Module {
  @override
  void binds(Injector i) {
    // i.addLazySingleton(PrecoModel.new);
    //ou este
    i.add(X.new);
    i.addLazySingleton((i) => PrecoModel(x: i()));
    //----
    //ou é este
    // i.addLazySingleton(CategoriaController(precoModel: i()) as Function);
    //ou é este
    i.addLazySingleton((i) => CategoriaController(precoModel: i()));

    // i.addLazySingleton(CategoriaController.new); //instancia troca a cada chamada da aplicação
    // i.addSingleton(CategoriaController.new); //mesma instancia igual carregada por toda aplicação = Lazy = falso
    // i.addLazySingleton(CategoriaController.new); //mesma instancia igual carregada por toda aplicação
    // i.addInstance(CategoriaController.new);
  }

  @override
  void exportedBinds(Injector i) {
    i.addLazySingleton((i) => CategoriaController(precoModel: i()));
    i.addLazySingleton((i) => PrecoModel());
    i.addLazySingleton((i) => X(x: i()));
    // i.add(PrecoModel.new);
    super.exportedBinds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => CategoriaPage());
    // r.child('/', child: (context) => CategoriaPage(key: r.args.data,));
    r.module('/produto', module: ProdutoModule());
    // super.routes(r);
  }
}
