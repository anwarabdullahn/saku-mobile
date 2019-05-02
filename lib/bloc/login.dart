import 'dart:async';
import './base.dart';
import 'package:rxdart/rxdart.dart';
import '../validation/login.dart';
import '../resources/repository.dart';

class LoginBloc extends Object with Validators implements BaseBloc {
  final _repository = Repository();

  StreamSink<String> get emailChange => _emailController.sink;
  StreamSink<String> get passwordChange => _passwordController.sink;

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get emailTxt =>
      _emailController.stream.transform(emailValidator);

  Stream<String> get passwordTxt =>
      _passwordController.stream.transform(passwordValidator);

  Stream<bool> get submitBtn =>
      Observable.combineLatest2(emailTxt, passwordTxt, (e, p) => true);

  onSubmit() {
    _repository.doLogin(_emailController.value, _passwordController.value);
  }

  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}

final loginBloc = LoginBloc();
