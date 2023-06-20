import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'email',
                  errorText: null,
                ),
              ),
              Padding(padding: EdgeInsets.all(12)),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  errorText: null,
                ),
              ),
              Padding(padding: EdgeInsets.all(12)),
              ElevatedButton(
                onPressed: null,
                child: Text('Login'),
              ),
            ],
          )),
    );
  }
}
