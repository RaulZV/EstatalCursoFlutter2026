import 'package:flutter/material.dart';

void main() => runApp(MiTienda());

class MiTienda extends StatelessWidget {
  const MiTienda({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          leadingWidth: 100, // default is 56
          title: Text('Tienda de Raul 269'),
          backgroundColor: const Color.fromARGB(255, 207, 255, 34),
            actions: [
                Icon(Icons.more_vert),
            ],
          centerTitle: true,
        ),
        body: Center(
          child: Text("Lista de productos disponibles"),
        ),
      ),
    );
  }
}
