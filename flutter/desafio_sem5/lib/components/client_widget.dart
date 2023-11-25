import 'package:desafio_sem5/models/cliente.dart';
import 'package:desafio_sem5/providers/client_provider.dart';
import 'package:desafio_sem5/routes/routes_cliente.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*
class ClientWidget extends StatelessWidget {
final Cliente cliente;
const ClientWidget({super.key, required this.cliente});

@override
Widget build(BuildContext context) {
final avatar = cliente.foto.isEmpty ? const CircleAvatar(child: Icon(Icons.person)) :
CircleAvatar(backgroundImage: NetworkImage(cliente.foto));
return ListTile(
leading: avatar, title: Text("${cliente.nome} ${cliente.sobrenome}"), subtitle: Text(cliente.email),
trailing: SizedBox(width: 100, child: Row(children: <Widget>[
IconButton(onPressed: () {}, icon: const Icon(Icons.edit), color: Colors.orange),
IconButton(onPressed: () {}, icon: const Icon(Icons.delete), color: Colors.red)
],),),
);
}}
*/


class ClientWidget extends StatelessWidget {
final Cliente cliente;
const ClientWidget({super.key, required this.cliente});
@override
Widget build(BuildContext context) {
final avatar = cliente.foto.isEmpty ? const CircleAvatar(child: Icon(Icons.person)) :
CircleAvatar(backgroundImage: NetworkImage(cliente.foto));
return ListTile(
leading: avatar, title: Text("${cliente.nome} ${cliente.sobrenome}"), subtitle: Text(cliente.email),
trailing: SizedBox(width: 100, child: Row(children: <Widget>[
IconButton( onPressed: () { Navigator.of(context).pushNamed(Routes.FORMULARIO_cliente, arguments: cliente); }, icon: const Icon(Icons.edit), color: Colors.green),
IconButton(
onPressed: () {
showDialog(
context: context,
builder: (ctx) => AlertDialog(
title: const Text('Excluir Cliente'),
content: const Text('Tem certeza?'),
actions: <Widget>[
FloatingActionButton(
onPressed: () => Navigator.of(context).pop(), child: const Text('Não'),
),
FloatingActionButton(
onPressed: () => Navigator.of(context).pop(), child: const Text('Sim'),
)],),
).then((confirmed) => {
if (confirmed) {
Provider.of<ClientProvider>(context, listen: false)
.remove(cliente.id)
}
});
},
icon: const Icon(Icons.delete),
color: Colors.red),
],),),

);
}}