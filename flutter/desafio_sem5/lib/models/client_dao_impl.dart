import 'dart:convert';
import 'package:desafio_sem5/models/cliente.dart';
import 'package:http/http.dart' as http;
import 'cliente_dao.dart';


class ClienteDAOMySQL implements ClienteDAO {
 @override
 Future<Map<String, Cliente>> encontrar() async {
 var uri = Uri.parse('http://localhost:3000/clientes');
 var resposta = await http.get(uri);
 if (resposta.statusCode != 200) throw Exception("Erro REST API");
 Iterable lista = json.decode(resposta.body);
 var map = <String, Cliente>{};
 for (var item in lista) {
    map[item['id'].toString()] = Cliente(
    id: item['id'].toString(),
    nome: item['nome'],
    sobrenome: item['sobrenome'],
    email: item['email'],
    foto: item['foto']);
 }
 return map;
 }

 @override
  Future<Map<String, Cliente>> remover(id) async {
    var uri = Uri.parse('http://localhost:3000/clientes/$id');
    var resposta = await http.delete(uri);
    if (resposta.statusCode != 200) throw Exception("Erro REST API");
    return encontrar();
 }
 @override
 salvar(Cliente cliente) async {
    var uri = Uri.parse('http://localhost:3000/clientes');
    final jsonText = jsonEncode(Cliente.toJson(cliente));
    if (cliente.id.trim().isEmpty) {
        var response = await http.post(uri,
        body: jsonText, headers: {"Content-Type": "application/json"});
        if (response.statusCode != 200) throw Exception("Erro REST API");
    } else {
        var response = await http.put(uri, body: jsonText, headers: {"Content-Type": "application/json"});
        if (response.statusCode != 200) throw Exception("Erro REST API");
    }
 }

}