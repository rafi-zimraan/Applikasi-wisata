import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true, // Menyembunyikan teks password
              ),
              SizedBox(height: 16),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Di sini Anda dapat mengambil nilai dari controller
                  String email = emailController.text;
                  String password = passwordController.text;
                  String username = usernameController.text;

                  // Lakukan sesuatu dengan nilai-nilai ini, seperti proses login
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
