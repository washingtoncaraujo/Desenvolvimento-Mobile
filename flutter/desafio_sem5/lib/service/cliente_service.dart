import 'package:desafio_sem5/models/cliente.dart';
import '../models/client_dao_impl.dart';
import '../models/exception.dart';

class ClienteService {
 final _dao = ClienteDAOMySQL();
    salvar(Cliente cliente) async {
    validacaoNomeSobrenome(cliente.nome);
    validacaoNomeSobrenome(cliente.sobrenome);
    validateEmail(cliente.email);
    await _dao.salvar(cliente);
 }
 Future<Map<String, Cliente>> remover(dynamic id) async {
    return _dao.remover(id);
 }
 Future<Map<String, Cliente>> encontrar() {
    return _dao.encontrar();
 }
  validacaoNomeSobrenome(String name) {
    var min = 3;
    var max = 50;
    if (name.isEmpty) {
    throw ExceptionLayer('O nome é obrigatório.');
    } else if (name.length < min) {
    throw ExceptionLayer('O nome deve possuir pelo menos $min caracteres.');
    } else if (name.length > max) {
    throw ExceptionLayer('O nome deve possuir no máximo $max caracteres.');
    }
 }
 validateEmail(String email) {
    if (email.isEmpty) {
    throw ExceptionLayer('O e-mail é obrigatório.');
    } else if (!email.contains('@')) {
    throw ExceptionLayer('O e-mail deve possuir @.');
    }
 }
}
