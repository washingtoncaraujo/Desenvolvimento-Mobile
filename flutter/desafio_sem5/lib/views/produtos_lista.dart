import 'package:desafio_sem5/components/produto_widget.dart';
import 'package:desafio_sem5/data/standard_product.dart';
import 'package:desafio_sem5/providers/product_provider.dart';
import 'package:desafio_sem5/routes/routes_cliente.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProdutoList extends StatelessWidget {
const ProdutoList({super.key});

@override
Widget build(BuildContext context) {
const produto = {...STANDARD_PRODUCT};
return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (ctx) => ProductProvider())
      ],
      child: Scaffold(
      appBar: AppBar(
      toolbarHeight: 100,
      title: const Text('Lista de Produtos'),
      actions: <Widget>[
        IconButton(onPressed: () {Navigator.of(context).pushNamed(Routes.FORMULARIO_produto);}, icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
       itemCount: produto.length,
       itemBuilder: (ctx, i) => ProdutWidget (produto: produto.values.elementAt(i))),
      )
);
}
}