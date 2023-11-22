import 'package:desafio_sem5/models/produtos.dart';
import 'package:desafio_sem5/providers/client_provider.dart';
import 'package:desafio_sem5/routes/routes_cliente.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProdutWidget extends StatelessWidget {
final Produto produto;
const ProdutWidget({super.key, required this.produto});

@override
Widget build(BuildContext context) {
//final avatar = produto.foto.isEmpty ? const CircleAvatar(child: Icon(Icons.person)) :
//CircleAvatar(backgroundImage: NetworkImage(cliente.foto));
return ListTile(
title: Text("${produto.nome} ${produto.descricao} ${produto.preco}"), subtitle: Text(produto.data_atualizado),
trailing: SizedBox(width: 100, child: Row(children: <Widget>[


IconButton( onPressed: () { Navigator.of(context).pushNamed(Routes.FORMULARIO_produto, arguments: produto); }, icon: const Icon(Icons.edit), color: Colors.green),

IconButton(
onPressed: () {
showDialog(
context: context,
builder: (ctx) => AlertDialog(
title: const Text('Excluir Produto'),
content: const Text('Tem certeza?'),
actions: <Widget>[
FloatingActionButton(
onPressed: () => Navigator.of(context).pop(), child: const Text('Não'),
),
FloatingActionButton(
onPressed: () => Navigator.of(context).pop(), child: const Text('Sim'),
)],),
).then((confirmado) => {
if (confirmado) {
Provider.of<ClientProvider>(context, listen: false)
.remove(produto.id)
}
});
},
icon: const Icon(Icons.delete),
color: Colors.red),
],),),

);
}}