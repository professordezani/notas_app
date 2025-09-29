import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {

  TextEditingController ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edita Nota"),
        actions: [
          IconButton(
            onPressed: () {
              // Salvar num banco de dados local (em memória).
              Navigator.pop(context);
            },
            icon: Icon(Icons.save)
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: TextField(
          controller: ctrl,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          maxLines: null,
          decoration: InputDecoration(
            hintText: "Digite suas anotações...",
            border: InputBorder.none,
          ),
        ),
      )
    );
  }
}