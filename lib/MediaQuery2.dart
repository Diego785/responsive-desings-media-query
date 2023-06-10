import 'package:flutter/material.dart';

class MediaQuery2 extends StatefulWidget {
  const MediaQuery2({super.key});

  @override
  State<MediaQuery2> createState() => _MediaQuery2State();
}

class _MediaQuery2State extends State<MediaQuery2> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: Text(
          (isDesktop(context) ? 'DESKTOP' : 'MOBILE'),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
            ,
          ),
        ),
        centerTitle: true,
        leading:
        (isMobile(context))?
         IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            // Lógica para el botón de menú
          },
        ): SizedBox.shrink(),
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
      body: Row(
        children: [
          if (isDesktop(context))
            Container(
              color: Colors.blue,
              width: 200,
              child: const Center(
                child: Text(
                  'SIDEBAR',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  'CONTENT',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
          ),
        ],
      ));
}