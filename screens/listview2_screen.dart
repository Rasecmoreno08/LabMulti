import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

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
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creando ListView1 Version 2'),
        elevation: 0),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: const Icon(Icons.queue_music),
          title: Text(opciones[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue,),
          onTap: () {
            final opciones_ = opciones[index];
            print(opciones_);
          },),
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: opciones.length)
    );
  }
}