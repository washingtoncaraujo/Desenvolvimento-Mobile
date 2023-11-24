class Produto{
  final String id;
  final String nome;
  final String descricao;
  final String preco;
  final String data_atualizado;

  const Produto({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.data_atualizado
  });

  static Map<String, dynamic> toJson(Produto produto) {
    return {
        'id': produto.id.isEmpty ? null : produto.id,
        'nome': produto.nome,
        'descricao': produto.descricao,
        'preco': produto.preco,
        'data_atualizado': produto.data_atualizado
 };

}
}