import 'dart:async';
import './base.dart';
import 'package:rxdart/rxdart.dart';
import '../validation/login.dart';

class LoginBloc extends Object with Validators implements BaseBloc {
  Function(String) get emailChange => _emailController.sink.add;
  Function(String) get passwordChange => _passwordController.sink.add;

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get emailTxt =>
      _emailController.stream.transform(emailValidator);

  Stream<String> get passwordTxt =>
      _passwordController.stream.transform(passwordValidator);

  Stream<bool> get submitBtn =>
      Observable.combineLatest2(emailTxt, passwordTxt, (e, p) => true);

  onSubmit() {}

  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}

final loginBloc = LoginBloc();
