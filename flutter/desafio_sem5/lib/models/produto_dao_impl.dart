import 'dart:convert';
import 'package:desafio_sem5/models/produtos.dart';
import 'package:desafio_sem5/models/protutos_dao.dart';
import 'package:http/http.dart' as http;


class ProdutoDAOMySQL implements ProdutoDAO {
 @override
 Future<Map<String, Produto>> encontrar() async {
    var uri = Uri.parse('http://localhost:3000/produtos');
    var resposta = await http.get(uri);
    if (resposta.statusCode != 200) throw Exception("Erro REST API");
    Iterable lista = json.decode(resposta.body);
    var map = <String, Produto>{};
    for (var item in lista) {
    map[item['id'].toString()] = Produto(
    id: item['id'].toString(),
    nome: item['nome'],
    descricao: item['descricao'],
    preco: item['preco'],
    data_atualizado: item['data_atualizado']);
    }
    return map;
 }
 @override
  Future<Map<String, Produto>> remover(id) async {
 var uri = Uri.parse('http://localhost:3000/produtos/$id');
 var resposta = await http.delete(uri);
 if (resposta.statusCode != 200) throw Exception("Erro REST API");
 return encontrar();
 }
 @override
 salvar(Produto produto) async {
    var uri = Uri.parse('http://localhost:3000/produtos');
    final jsonText = jsonEncode(Produto.toJson(produto));
    if (produto.id.trim().isEmpty) {
    var response = await http.post(uri,
    body: jsonText, headers: {"Content-Type": "application/json"});
    if (response.statusCode != 200) throw Exception("Erro REST API");
    } else {
    var response = await http.put(uri, body: jsonText, headers: {"Content-Type": "application/json"});
    if (response.statusCode != 200) throw Exception("Erro REST API");
    }
 }
}