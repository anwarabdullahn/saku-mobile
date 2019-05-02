import 'package:http/http.dart' show Client;
import './api.dart';
import 'dart:async';

class ApiProvider {
  Client client = Client();

  Future doLogin(email, password) async {
    final response = await client
        .post('$api/login', body: {'email': email, 'password': password});
    print(response);
  }
}
