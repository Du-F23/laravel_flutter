import 'package:flutter/material.dart';
import 'package:laravel_flutter/screen/post_screen.dart';

abstract class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const ListTile(title: Text('Inicio')),
        ListTile(
          title: const Text('Post'),
          onTap: () async => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PostScreen())),
        )
      ],
    ));
  }
}
