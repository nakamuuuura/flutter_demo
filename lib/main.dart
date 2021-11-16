import 'package:flutter/material.dart';
import 'package:profile_sandbox/profile.dart';

import 'map_home.dart';

void main() {
  runApp(const FormApp());
}

final links = [
  Link(
    name: 'MapHome',
    route: '/map_home',
    builder: (context) => MapHome(
      // This sample uses a mock HTTP client.
    ),
  ),
  Link(
    name: 'Profile',
    route: '/profile',
    builder: (context) => Profile(),
  ),
];



class FormApp extends StatelessWidget {
  const FormApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Samples',
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: Map.fromEntries(links.map((d) => MapEntry(d.route, d.builder))),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Samples'),
      ),
      body: ListView(
        children: [...links.map((d) => LinkTile(link: d))],
      ),
    );
  }
}

class LinkTile extends StatelessWidget {
  final Link? link;

  const LinkTile({this.link, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(link!.name),
      onTap: () {
        Navigator.pushNamed(context, link!.route);
      },
    );
  }
}

class Link {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Link({required this.name, required this.route, required this.builder});
}
