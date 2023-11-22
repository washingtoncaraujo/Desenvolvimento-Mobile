
//import 'package:desafio_sem5/providers/client_provider.dart';

import 'package:desafio_sem5/routes/routes_cliente.dart';
import 'package:desafio_sem5/views/clientes_lista.dart';
import 'package:desafio_sem5/views/formulaire_cliente.dart';
import 'package:desafio_sem5/views/formulaire_Product.dart';
import 'package:desafio_sem5/views/produtos_lista.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 184, 36, 36)),
        useMaterial3: true,
      ),
      routes: {
        Routes.Cliente: (_) => const ClientsList(),
        Routes.Produto: (_) => const ProdutoList(),
        Routes.FORMULARIO_cliente: (_) =>  const formulaire_cliente(),
        Routes.FORMULARIO_produto: (_) => const Formulaire_product(),
      },

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bem-Vindo!'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.Cliente);
                      },
                      child: const Text('Lista de clientes'),
                    );
                  },
                ),
              Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.Produto);
                      },
                      child: const Text('Lista de Produtos'),
                    );
                  },
                ),
            ],
          ),
        ),
      
    ));
      

/*
  return MultiProvider(
    providers: [
    ChangeNotifierProvider(create: (ctx) => ClientProvider())
    ],
    child: MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.grey),
    useMaterial3: true,
    ),
    home: const ClientsList(),
  ));
  */
}
}
