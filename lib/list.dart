import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notas")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/create"),
        child: Icon(Icons.add),
      ),
    );
  }
}