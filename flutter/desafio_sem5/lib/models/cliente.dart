class Cliente {
final String id;
final String nome;
final String sobrenome;
final String email;
final String foto;

const Cliente({
this.id ="",
required this.nome,
required this.sobrenome,
required this.email,
required this.foto,
});
static Map<String, dynamic> toJson(Cliente cliente) {
 return {
    'id': cliente.id.isEmpty ? null : cliente.id,
    'nome': cliente.nome,
    'sobrenome': cliente.sobrenome,
    'email': cliente.email,
    'foto': cliente.foto
 };

}
}