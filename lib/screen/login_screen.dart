import 'dart:developer';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen> {
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  Future submit () async{
    log(_email);
    log(_password);
  }

  get onSaved => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        key: _formKey,
        // ignore: prefer_const_constructors
        body: Form(
            child: Scrollbar(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Email', hintText: 'example@example.com'),
                ),
                onSaved: (value) => {
                  _email = value;
                },
                
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Password', hintText: '********'),
                ),
                onSaved: (value) => {
                  _password = value;
                },
                const SizedBox(
                  width: double.infinity,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      _formKey.currentState.save();
                      
                      this.submit();
                    },
                    child: (Text('Login')),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
