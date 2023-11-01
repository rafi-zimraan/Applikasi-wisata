// ignore_for_file: library_private_types_in_public_api

import 'package:awesome_flutter/main_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final sportPlace tempat;

  const DetailScreen({
    super.key,
    required this.tempat,
  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isImageModalOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tempat.name),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isImageModalOpen = true;
                });
              },
              child: Image(image: AssetImage(widget.tempat.imagePath)),
            ),
            const SizedBox(height: 10),
            const Text(
              'Spesifikasi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(widget.tempat.description),
            const SizedBox(height: 10),
            const Text(
              'Harga Pasaran di Dunia Internasional:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(widget.tempat.price),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isImageModalOpen) {
            Navigator.pop(context);
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(widget.tempat.imagePath),
                        width: 300,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Spesifikasi:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(widget.tempat.description),
                      const SizedBox(height: 30),
                      const Text(
                        'Harga Pasaran di Dunia Internasional:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(widget.tempat.price),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Tutup'),
                    ),
                  ],
                );
              },
            );
          }
          setState(() {
            isImageModalOpen = !isImageModalOpen;
          });
        },
        child: Icon(isImageModalOpen ? Icons.close : Icons.fullscreen),
      ),
    );
  }
}
