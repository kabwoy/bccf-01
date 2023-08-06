import 'dart:async';

class ValidatorMixin {
  final validateEmail =
      StreamTransformer<String , String>.fromHandlers(handleData: (email, sink) {
    if (email.contains("@")) {
      sink.add(email);
    } else {
      sink.addError("Invalid Email");
    }
  });

  final validatePassword =
      StreamTransformer<String , String>.fromHandlers(handleData: (String password, sink) {
    if (password.length > 4) {
      sink.add(password);
    } else {
      sink.addError("Password Too Short Try More Than 4 Chars");
    }
  });
}
