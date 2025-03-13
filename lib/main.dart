import 'package:flutter/material.dart';

class Refaccion {
  final String nombre;
  final int cantidadRefaccion;
  final double precio;
  final String calidad;
  final String marca;
  final String paisOrigen;
  final int id;

  Refaccion({
    required this.nombre,
    required this.cantidadRefaccion,
    required this.precio,
    required this.calidad,
    required this.marca,
    required this.paisOrigen,
    required this.id,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Refaccion> refacciones = [
    Refaccion(
        nombre: "Filtro de Aceite",
        cantidadRefaccion: 10,
        precio: 250.0,
        calidad: "Alta",
        marca: "Bosch",
        paisOrigen: "Alemania",
        id: 1),
    Refaccion(
        nombre: "Bujía NGK",
        cantidadRefaccion: 20,
        precio: 120.0,
        calidad: "Media",
        marca: "NGK",
        paisOrigen: "Japón",
        id: 2232),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "   Refaccionaria SAJR \n   Saul Jimenez-1222 ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xFFFFC8A2), // Naranja pastel
          centerTitle: true,
          elevation: 10,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: refacciones
                .map((refaccion) => Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(24.0),
                        decoration: BoxDecoration(
                          color: refaccion.id == 1
                              ? Color(0xFFF7D794) // Amarillo pastel
                              : Color(0xFFD4A5A5), // Rojo pastel
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${refaccion.nombre}",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Text("Marca: ${refaccion.marca}",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87)),
                            Text("Cantidad: ${refaccion.cantidadRefaccion}",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87)),
                            Text("Precio: \$${refaccion.precio}",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87)),
                            Text("Calidad: ${refaccion.calidad}",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87)),
                            Text("País de Origen: ${refaccion.paisOrigen}",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87)),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
