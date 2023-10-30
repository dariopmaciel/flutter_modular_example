import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';

class CategoriaModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => CategoriaPage());
    // r.child('/', child: (context) => CategoriaPage(key: r.args.data,));
    super.routes(r);
  }
}
