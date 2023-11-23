import 'package:desafio_sem5/components/client_widget.dart';
//import 'package:desafio_sem5/data/standard_client.dart';
import 'package:desafio_sem5/providers/client_provider.dart';
import 'package:desafio_sem5/routes/routes_cliente.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClientsList extends StatelessWidget {
const ClientsList({super.key});
@override
Widget build(BuildContext context) {
//const clientes = {...STANDARD_CLIENTS};
final ClientProvider clientes = Provider.of(context);


return Scaffold(
appBar: AppBar(
toolbarHeight: 100,
title: const Text('Lista de clientes'),
actions: <Widget>[

 IconButton(onPressed: () {Navigator.of(context).pushNamed(Routes.FORMULARIO_cliente);}, icon: const Icon(Icons.add))
],
),
body: ListView.builder(
itemCount: clientes.contador,
itemBuilder: (ctx, i) =>
ClientWidget(cliente: clientes.peloIndice(i))),
);


}
}