import 'package:flutter/material.dart';

void main() => runApp(AppViajes());

class AppViajes extends StatelessWidget {
  const AppViajes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TEMA Y COLOR
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: PantallaInicio(),
    );
  }
}// fin clase AppViajes

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destinos Turísticos RaulZV Cbtis 269"),
        backgroundColor: Colors.blue,
        ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        // COLUMNA PRINCIPAL
        child: Column(
          children: [
            // FILA 1
            Row(
              children: [
                Expanded(child: TarjetaLugar(
                  titulo: "París, Francia,RaulZV Cbtis 269",
                  desc: "La ciudad del amor y la Torre Eiffel.",
                  url: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=500&q=80",
                )),
              ],
            ),
            // FILA 2
            Row(
              children: [
                Expanded(child: TarjetaLugar(
                  titulo: "Roma, Italia RaulZV Cbtis 269",
                  desc: "Historia viva en cada esquina.",
                  url: "https://images.unsplash.com/photo-1552832230-c0197dd311b5?w=500&q=80",
                )),
              ],
            ),

          ],
        ),
      ),
    );
  }
}// fin de la clase PantallaInicio

class TarjetaLugar extends StatelessWidget {
  final String titulo, desc, url;
  const TarjetaLugar({super.key, required this.titulo, required this.desc, required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row( // Row dentro de la card para poner imagen a la izquierda
          children: [
            Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(desc),
              ],
            )
          ],
        ),
      ),
    );
  }
}// fin de la clase TarjetaLugar