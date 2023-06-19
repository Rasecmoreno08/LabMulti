import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  final titulos = const[
    'ListView1',
    'ListView2',
    'Card',
    'Alert'
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter I'),
        elevation: 0,
        backgroundColor: Colors.green[400],
        ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: const Icon(Icons.circle),
          title: Text(titulos[index]),
          trailing: const Icon(Icons.arrow_forward),
          onTap:() {
            //final route = MaterialPageRoute(builder:(context) => const CardScreen());
            //Navigator.push(context, route);
            if(index == 0){
            Navigator.pushNamed(context, 'listview1');
            }else if(index == 1){
            Navigator.pushNamed(context, 'listview2');
            }else if(index == 2){
            Navigator.pushNamed(context, 'card');
            }else if(index == 3){
            Navigator.pushNamed(context, 'alert');
            }
          },
        ), 
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: titulos.length)
    );
  }
}