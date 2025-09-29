import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Nota"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.save)
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: TextField(
          keyboardType: TextInputType.multiline,
          //obscureText: true,
          minLines: 1,
          maxLines: null,
          decoration: InputDecoration(
            hintText: "Digite suas anotações...",
            border: InputBorder.none,
            // filled: true,
            // fillColor: Colors.amber
          ),
        ),
      )
    );
  }
}