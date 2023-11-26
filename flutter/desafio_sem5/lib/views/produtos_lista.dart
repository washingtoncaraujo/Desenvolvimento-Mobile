import 'package:desafio_sem5/components/produto_widget.dart';
import 'package:desafio_sem5/providers/product_provider.dart';
import 'package:desafio_sem5/routes/routes_cliente.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProdutoList extends StatelessWidget {
const ProdutoList({super.key});
@override
Widget build(BuildContext context) {
final ProdutoProvider produto = Provider.of(context);
return Scaffold(
appBar: AppBar(
      toolbarHeight: 100,
      title: const Text('Lista de Produtos'),
      actions: <Widget>[
       // IconButton(onPressed: () {Navigator.of(context).pushNamed(Routes.FORMULARIO_produto);}, icon: const Icon(Icons.add))
        Transform.scale(
        scale: 2.0, // Ajuste este valor conforme necessário
        child: IconButton(
          onPressed: () { Navigator.of(context).pushNamed(Routes.FORMULARIO_produto);
          },
          icon: const Icon(Icons.add),
        ),
        )
        ],
      ),
      body: ListView.builder(
       itemCount: produto.contador,
       itemBuilder: (ctx, i) => 
       ProdutWidget (produto: produto.peloIndice(i))),
      
);
}
}