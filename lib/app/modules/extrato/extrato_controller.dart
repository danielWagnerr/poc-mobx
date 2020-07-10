import 'package:banco_bmg/app/shared/constants.dart';
import 'package:banco_bmg/app/shared/models/post_model.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';


// class PostController = _PostBase with _$PostController;

abstract class _PostBase with Store {

  @observable
  ObservableFuture<List<Post>> postsList;

}