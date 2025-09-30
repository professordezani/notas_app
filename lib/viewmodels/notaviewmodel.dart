import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/nota.dart';

class NotaViewModel extends ChangeNotifier {

  List<Nota> _notas = [];

  List<Nota> get notas => List.unmodifiable(_notas);

  void create(Nota nota) {
    _notas.add(nota);
    notifyListeners();
  }

  void delete(int id) {
    // apaga dos da lista
    notifyListeners();
  }

}