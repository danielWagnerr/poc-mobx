import 'package:banco_bmg/app/modules/cadastro/cadastro_module.dart';
import 'package:banco_bmg/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
    Router('/cadastro', module: CadastroModule())
  ];

  static Inject get to => Inject<HomeModule>.of();

}