import '../models/produtos.dart';
import '../models/exception.dart';
import '../models/produto_dao_impl.dart';


class ProdutoService {
 final _dao = ProdutoDAOMySQL();
    salvar(Produto produto) async {
    validacaoNomeSobrenome(produto.nome);
    validacaoNomeSobrenome(produto.descricao);
    await _dao.salvar(produto);
 }
 Future<Map<String, Produto>> remover(dynamic id) async {
    return _dao.remover(id);
 }
 Future<Map<String, Produto>> encontrar() {
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