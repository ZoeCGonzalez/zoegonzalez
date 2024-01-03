import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Portafolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Portafolio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Sección de cabecera
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hola,',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Soy [Tu Nombre]',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Desarrollador Flutter',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Sección de proyectos o trabajos
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Proyectos',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // Aquí puedes agregar tarjetas o widgets para tus proyectos
                  // Por ejemplo:
                  Card(
                    elevation: 3.0,
                    child: ListTile(
                      title: Text('Proyecto 1'),
                      subtitle: Text('Descripción del Proyecto 1'),
                    ),
                  ),
                  Card(
                    elevation: 3.0,
                    child: ListTile(
                      title: Text('Proyecto 2'),
                      subtitle: Text('Descripción del Proyecto 2'),
                    ),
                  ),
                ],
              ),
            ),
            // Otras secciones como habilidades, experiencia, etc.
          ],
        ),
      ),
    );
  }
}
