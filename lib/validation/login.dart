import 'dart:async';

mixin Validators {
  var emailValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    email.contains('@') ? sink.add(email) : sink.addError('Invalid Email Type');
  });

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    password.length > 1
        ? sink.add(password)
        : sink.addError('Password is required');
  });
}
