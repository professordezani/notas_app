import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import '../models/nota.dart';

class NotaViewModel extends ChangeNotifier {

  List<Nota> _notas = [];

  List<Nota> get notas => List.unmodifiable(_notas);

  void create(Nota nota) {
    nota.id = Uuid().v4();
    _notas.add(nota);
    // exemplo, para seminário:
    // firebase.collection('notas').add(nota);
    notifyListeners();
  }

  void delete(String id) {
    // apaga dos da lista
    notifyListeners();
  }

  void update(Nota nota) {
    // for(var _nota in notas) {
    //   if(_nota.id == nota.id) {
    //     _nota.title = nota.title;
    //   }
    // }
    var _nota = notas.where((e) => e.id == nota.id).first;
    _nota.title = nota.title;

    notifyListeners();
  }

}