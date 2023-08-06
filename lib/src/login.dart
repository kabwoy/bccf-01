import 'package:flutter/material.dart';
import 'blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [emailInput(), passwordInput(), submitButton()],
      ),
    );
  }

  Widget emailInput() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: (newValue) {
              bloc.changeEmail(newValue);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "name@example.com",
              labelText: "Email Address",
              errorText: snapshot.error?.toString(),
            ),
          );
        });
  }

  Widget passwordInput() {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              errorText: snapshot.error?.toString(),
              ),
            onChanged: (e) {
              bloc.changePassword(e);
            },
          );
        });
  }

  Widget submitButton() {
    return ElevatedButton(
      child: const Text("Login"),
      onPressed: () {},
    );
  }
}
