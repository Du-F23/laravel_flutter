import 'package:flutter/material.dart';
import 'package:laravel_flutter/screen/login_screen.dart';
import 'package:laravel_flutter/screen/post_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Laravel Autenticacion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const ListTile(title: Text('Inicio')),
          ListTile(
            title: const Text('Post'),
            onTap: () async => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PostScreen())),
          ),
          ListTile(
            title: const Text('Login'),
            onTap: () async => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen())),
          )
        ],
      )),
      body: const Center(child: Text('Hello World')),
    );
  }
}
