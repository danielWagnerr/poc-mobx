import 'package:banco_bmg/app/app_widget.dart';
import 'package:banco_bmg/app/modules/home/home_module.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {

  @override
  // TODO: implement binds
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/', module: HomeModule())
  ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}