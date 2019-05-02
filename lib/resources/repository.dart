import 'package:saku_mobile/resources/apiProvider.dart';
import 'dart:async';

class Repository {
  final _apiProvider = ApiProvider();

  Future doLogin(String email, String password) =>
      _apiProvider.doLogin(email, password);
}
