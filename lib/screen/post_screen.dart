import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PostState();
  }
}

class _PostState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post')),
      // ignore: prefer_const_constructors
      body: Center(
        child: const Text('Post'),
      ),
    );
  }
}
