import 'package:flutter/material.dart';
import '../models/nota.dart';
import 'package:intl/intl.dart';

class ListPage extends StatelessWidget {

  List<Nota> notas = [
    Nota("1", "Anotações de aula", DateTime.now()),
    Nota("2", "Anotações de trabalho", DateTime.now()),
    Nota("3", "Anotações de festas", DateTime.now()),
    Nota("4", "Anotações de livros", DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notas")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/create"),
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: notas.map((nota) => ListTile(
          onTap: () => Navigator.pushNamed(context, '/edit'),
          title: Text(
            nota.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(DateFormat.yMd('en_US').format(nota.date)),
          trailing: Icon(Icons.chevron_right_outlined),
        )).toList()
      ),
    );
  }
}