import 'dart:math';

import 'package:desafio_sem5/data/standard_product.dart';
import 'package:desafio_sem5/models/produtos.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
final Map<String, Produto> _itens = {...STANDARD_PRODUCT};
List<Produto> get todos {
return [..._itens.values];
}


void put(Produto produto) {
if (produto.id.trim().isNotEmpty &&
_itens.containsKey(produto.id)) {
_itens.update(produto.id, (_) => produto);
} else {
final id = Random().nextDouble().toString();
_itens.putIfAbsent(
id,
() => Produto(
id: id,
nome: produto.nome,
descricao: produto.descricao,
preco: produto.preco,
data_atualizado: produto.data_atualizado));
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
Produto peloIndice(int i) {
return _itens.values.elementAt(i);
}
}