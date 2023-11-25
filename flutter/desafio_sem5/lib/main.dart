
import 'package:desafio_sem5/providers/client_provider.dart';
import 'package:desafio_sem5/providers/product_provider.dart';
import 'package:desafio_sem5/routes/routes_cliente.dart';
import 'package:desafio_sem5/views/clientes_lista.dart';
import 'package:desafio_sem5/views/formulaire_cliente.dart';
import 'package:desafio_sem5/views/formulaire_Product.dart';
import 'package:desafio_sem5/views/produtos_lista.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return MultiProvider(
    providers: [
        ChangeNotifierProvider(create: (ctx) => ClientProvider()),
        ChangeNotifierProvider(create: (ctx) => ProdutoProvider())
    ],
    child: MaterialApp(
    
    title: 'BD flutter',
    theme: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 140, 29, 29)),
    useMaterial3: true,
    ),
    routes: {
        Routes.Cliente: (_) => const ClientsList(),
        Routes.Produto: (_) => const ProdutoList(),
        Routes.FORMULARIO_cliente: (_) =>  const formulaire_cliente(),
        Routes.FORMULARIO_produto: (_) => const Formulaire_product(),
      },
    //home: const ClientsList(),
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
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 243, 191, 33), // Cor do texto
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ), // Forma do botão
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Padding
                          textStyle: TextStyle(
                            fontSize: 24, // Tamanho da fonte
                          ),
                        ),
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
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 243, 191, 33), // Cor do texto
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ), // Forma do botão
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Padding
                          textStyle: TextStyle(
                            fontSize: 24, // Tamanho da fonte
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
        ),
      
  )));
  
}
}

