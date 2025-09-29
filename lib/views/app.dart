import 'package:flutter/material.dart';
import 'list.dart';
import 'create.dart';
import 'edit.dart';

class NotasApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/list": (context) => ListPage(),
        "/create": (context) => CreatePage(),
        "/edit": (context) => EditPage(),
      },
      initialRoute: "/list",
    );
  }
}