import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';
import 'package:flutter_modular_example/app/produto/produto_page.dart';

class ProdutoModule extends Module {
  @override
  void binds(Injector i) {
    // i.addLazySingleton(PrecoModel.new);
    super.binds(i);
  }

  @override
  List<Module> get imports => [
        CategoriaModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.child('/:produto/xyz',
        child: (context) => ProdutoPage(produto: r.args.params['produto']));
    r.child('/xyz',
        child: (context) =>
            ProdutoPage(produto: r.args.queryParams['produto']));
    super.routes(r);
  }
}
