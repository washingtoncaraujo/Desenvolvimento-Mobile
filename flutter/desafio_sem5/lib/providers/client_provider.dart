import 'package:desafio_sem5/models/cliente.dart';
import 'package:flutter/material.dart';

import '../service/cliente_service.dart';

class ClientProvider with ChangeNotifier {
 final ClienteService _service = ClienteService();
 Map<String, Cliente> _itens = {};
 ClientProvider() {
 _service.encontrar().then((value) => {_itens = value, notifyListeners()});
 }


void put(Cliente cliente) async {
 await _service.salvar(cliente);
 _service.encontrar().then((value) => {_itens = value, notifyListeners()});
 }


 void remove(String id) {
 _service.remover(id).then((value) => {_itens = value, notifyListeners()});
 }

int get contador {
return _itens.length;
}

Cliente peloIndice(int i) {
return _itens.values.elementAt(i);
}
}