import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final opciones = const[
    'Slipknot',
    'Korn',
    'Limp Bizkit',
    'Audioslave',
    'System of a Down',
    'Mudvayne',
    'SUM 41',
    'Blink 182'
  ];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creando ListView1 Version 1'),
        elevation: 0),
      body: ListView(
        children: [
          ...opciones.map((e) => ListTile(
            leading: const Icon(Icons.music_video_outlined),
            title: Text(e),
            trailing: const Icon(Icons.arrow_forward_sharp),
          )).toList()
        ],
        )
    );
  }
}