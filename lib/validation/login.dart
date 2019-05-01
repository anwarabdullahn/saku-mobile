import 'dart:async';

mixin Validators {
  var emailValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    email.contains('@') ? sink.add(email) : sink.addError('Invalid Email Type');
  });
}
