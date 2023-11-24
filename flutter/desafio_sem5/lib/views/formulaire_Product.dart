import 'package:desafio_sem5/models/produtos.dart';
import 'package:desafio_sem5/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class Formulaire_product extends StatefulWidget {
const Formulaire_product({super.key});
@override
State<Formulaire_product> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire_product> {
// ignore: non_constant_identifier_names
final _formulario_product = GlobalKey<FormState>();
final Map<String, String> _dadosFormulario = {};


void _carregaDadosFormulario(Produto produto) {
_dadosFormulario['id'] = produto.id;
_dadosFormulario['nome'] = produto.nome;
_dadosFormulario['descricao'] = produto.descricao;
_dadosFormulario['preco'] = produto.preco;
_dadosFormulario['data_atualizado'] = produto.data_atualizado;
}
@override
Widget build(BuildContext context) {
final Object? produto = ModalRoute.of(context)!.settings.arguments;
if (produto != null) { _carregaDadosFormulario(produto as Produto); }
return Scaffold(
appBar: AppBar(
title: const Text('Formulario de clientes'),
actions: <Widget>[
IconButton(
onPressed: () {
if (_formulario_product.currentState!.validate()) {
_formulario_product.currentState!.save();
Provider.of<ProdutoProvider>(context, listen: false).put(
Produto(
id: _dadosFormulario['id'] ?? '',
nome: _dadosFormulario['nome'] ?? '',
descricao: _dadosFormulario['descricao'] ?? '',
preco: _dadosFormulario['preco'] ?? '',
data_atualizado: _dadosFormulario['data_atualizado'] ?? ''),
);
Navigator.of(context).pop();
}},
icon: const Icon(Icons.save))
],),
body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form( key: _formulario_product,
            child: Column(children: <Widget>[
              TextFormField(
                initialValue: _dadosFormulario['nome'],
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (valor) {
                  if (valor == null || valor.trim().isEmpty) { return 'Nome Inválido';}
                  if (valor.trim().length < 3) {return "Nome muito pequeno. No mínimo 3 letras";}
                  return null;
                },
                onSaved: (valor) => _dadosFormulario['nome'] = valor!,
                ),
              TextFormField( initialValue: _dadosFormulario['descricao'],
                decoration: const InputDecoration(labelText: 'Descricao'),
                onSaved: (valor) => _dadosFormulario['descricao'] = valor!,
              ),
              TextFormField( initialValue: _dadosFormulario['preco'],
                decoration: const InputDecoration(labelText: 'Preco'),
                onSaved: (valor) => _dadosFormulario['preco'] = valor!,
              ),
              TextFormField( initialValue: _dadosFormulario['data_atualizado'],
                decoration: const InputDecoration(labelText: 'Data da atualização'),
                onSaved: (valor) => _dadosFormulario['data_atualizado'] = valor!,
              )
// TODO: Adicionar os outros campos
          ]),
      ),),

);
}
}