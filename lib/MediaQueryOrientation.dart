import 'package:flutter/material.dart';

class MediaQueryOrientation extends StatefulWidget {
  const MediaQueryOrientation({super.key});

  @override
  State<MediaQueryOrientation> createState() => _MediaQueryOrientationState();
}

class _MediaQueryOrientationState extends State<MediaQueryOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: Text(
          'ORIENTATION',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            // Lógica para el botón de menú
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // Lógica para el botón de búsqueda
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // Lógica para el botón de notificaciones
            },
          ),
        ],
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Portrait',
                  style: TextStyle(color: Colors.white, fontSize: 80),
                ),
              ),
            )
          : Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Landscape',
                  style: TextStyle(color: Colors.white, fontSize: 80),
                ),
              ),
            ),
    );
  }
}
