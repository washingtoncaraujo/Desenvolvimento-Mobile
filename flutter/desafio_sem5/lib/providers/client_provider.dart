import 'dart:math';
import 'package:desafio_sem5/data/standard_client.dart';
import 'package:desafio_sem5/models/cliente.dart';
import 'package:flutter/material.dart';

class ClientProvider with ChangeNotifier {
final Map<String, Cliente> _itens = {...STANDARD_CLIENTS};
List<Cliente> get todos {
return [..._itens.values];
}


void put(Cliente cliente) {
if (cliente.id.trim().isNotEmpty &&
_itens.containsKey(cliente.id)) {
_itens.update(cliente.id, (_) => cliente);
} else {
final id = Random().nextDouble().toString();
_itens.putIfAbsent(
id,
() => Cliente(
id: id,
nome: cliente.nome,
sobrenome: cliente.sobrenome,
email: cliente.email,
foto: cliente.foto));
}
notifyListeners();
}

void remove(String id) {
_itens.remove(id);
notifyListeners();
}

int get contador {
return _itens.length;
}

Cliente peloIndice(int i) {
return _itens.values.elementAt(i);
}
}