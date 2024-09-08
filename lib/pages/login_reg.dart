import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:login/auth.dart';
import 'package:login/constant/text_string.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMassage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMassage = e.message;
      });
    }
    Navigator.of(context).pop();
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithUserAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMassage = e.message;
      });
    }
  }

  Widget _loginImage() {
    return const Image(image: AssetImage('assets/images/login_image.png'));
  }

  Widget _title() {
    return const Text('eStudent');
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
        border: const OutlineInputBorder(),
      ),
    );
  }

  Widget _entryFieldp(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      obscureText: true,
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
        border: const OutlineInputBorder(),
      ),
    );
  }

  Widget _loginText1() {
    return const Text(
      aLoginText1,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _loginText2() {
    return const Text(
      aLoginText2,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }

  // Widget _errorMassage(){
  //   return Text(errorMassage = ''? '' : 'Humm ? $errorMassage');
  // }

  Widget _loginButton() {
    return SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: signInWithEmailAndPassword,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        child: const Text('Login'),
      ),
    );
  }

  Widget _loginOrRegsterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? '' : ''),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _loginImage(),
              _loginText1(),
              const SizedBox(
                height: 10,
              ),
              _loginText2(),
              const SizedBox(
                height: 20,
              ),
              _entryField(
                'email',
                _controllerEmail,
              ),
              const SizedBox(
                height: 15,
              ),
              _entryFieldp('password', _controllerPassword),
              const SizedBox(
                height: 20,
              ),
              _loginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
