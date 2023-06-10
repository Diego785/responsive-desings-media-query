import 'package:flutter/material.dart';

class MediaQueryOrientation2 extends StatefulWidget {
  const MediaQueryOrientation2({super.key});

  @override
  State<MediaQueryOrientation2> createState() => _MediaQueryOrientation2State();
}

class _MediaQueryOrientation2State extends State<MediaQueryOrientation2> {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    final isMobile = MediaQuery.of(context).size.width < 1000;

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
        drawer: isMobile
            ? Drawer(
                backgroundColor: Colors.white,
                child: Container(
                  color: Colors.blue,
                  width: 300,
                  child: const Center(
                      child: Text(
                    'Sidebar',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
                ),
              )
            : null,
        body: Row(
          children: [
            if (!isMobile)
              Container(
                color: Colors.blue,
                width: 300,
                child: const Center(
                  child: Text(
                    'Sidebar',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
            Expanded(
              child: GridView.count(
                crossAxisCount: isPortrait ? 2 : 3,
                children: List.generate(
                  30,
                  (index) => Card(
                    color: Colors.orange,
                    child: Center(
                        child: Text(
                      'Item $index',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
