import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  bool _passwordVisible = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            TextButton(
                onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                );
                },
                child: Text('Log in'),
            ),
            ],
        ),
        ),
    );
    }
}