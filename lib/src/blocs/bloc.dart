import 'dart:async';
import "../blocs/validators.dart";

class Bloc extends ValidatorMixin {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  // get 
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  get changeEmail => _emailController.sink.add;
  get changePassword => _passwordController.sink.add;
}

final bloc = Bloc();
