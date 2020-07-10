import 'package:banco_bmg/app/modules/cadastro/cadastro_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroModule extends ChildModule {

  @override
  // TODO: implement binds
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => CadastroPage(), transition: TransitionType.fadeIn)
  ];

  static Inject get to => Inject<CadastroModule>.of();

}