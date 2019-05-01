import 'dart:async';
import './base.dart';
import '../validation/login.dart';

class LoginBloc extends Object with Validators implements BaseBloc {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get emailTxt =>
      _emailController.stream.transform(emailValidator);

  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
