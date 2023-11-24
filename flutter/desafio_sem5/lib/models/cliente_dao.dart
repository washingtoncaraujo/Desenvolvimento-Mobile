import 'cliente.dart';

abstract class ClienteDAO{
 salvar(Cliente cliente);
 Future<Map<String, Cliente>> remover(dynamic id);
 Future<Map<String, Cliente>> encontrar();
}
