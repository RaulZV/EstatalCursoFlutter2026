import 'package:flutter/material.dart';

void main() => runApp(MiAppRegistro());

class MiAppRegistro extends StatelessWidget {
  const MiAppRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Registro Nava",
      theme: ThemeData(primarySwatch: Colors.blue),
      // Rutas nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaBienvenida(),
        '/datos': (context) => const PantallaDatos(),
        '/final': (context) => const PantallaFinal(),
      },// fin rutas
    );
  } // fin widget build
}// fin clase MiAppRegistro

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido Raul CBTis 269'),
        backgroundColor: Colors.amber,
      ),
     body: Center(
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/datos'),
        child: Text("Empezar Registro - Raul CBTis 269"),
      ),
     ),

    );
  }
}// fin pantalla binvenida

class PantallaDatos extends StatelessWidget {
  const PantallaDatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Personales - Raul CBTis 269'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/final'),
          child: Text("Finalizar Registro - Raul CBTis 269"),
        ),
      ),
    );
  }
}// fin pantalla datos

class PantallaFinal extends StatelessWidget {
  const PantallaFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Final Raul CBTis 269'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: Text("Volver a Bienvenida"),
        )

      )
    );
  }
}