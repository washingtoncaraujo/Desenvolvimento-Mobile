
import 'package:desafio_sem5/models/produtos.dart';
import 'package:desafio_sem5/service/produto_service.dart';
import 'package:flutter/material.dart';


class ProdutoProvider with ChangeNotifier {
 final ProdutoService _service = ProdutoService();
 Map<String, Produto> _itens = {};
 ProdutoProvider() {
 _service.encontrar().then((value) => {_itens = value, notifyListeners()});
 }


void put(Produto produto) async {
 await _service.salvar(produto);
 _service.encontrar().then((value) => {_itens = value, notifyListeners()});
 }


 void remove(String id) {
 _service.remover(id).then((value) => {_itens = value, notifyListeners()});
 }

int get contador {
return _itens.length;
}

Produto peloIndice(int i) {
return _itens.values.elementAt(i);
}
}