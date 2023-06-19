
import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[

    MenuOption(route: 'home', icon: Icons.home_filled, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt_outlined, name: 'ListView Version 1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_sharp, name: 'ListView Version 2', screen: const ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.card_membership_sharp, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_sharp, name: 'Alert Screen', screen: const AlertScreen()), 
    
  ];



  /*static Map<String, Widget Function(BuildContext)> routes = {
        'home':(BuildContext context) => const HomeScreen(),
        'listview1':(BuildContext context) => const ListView1Screen(),
        'listview2':(BuildContext context) => const ListView2Screen(),
        'card':(BuildContext context) => const CardScreen(),
        'alert':(BuildContext context) =>  const AlertScreen()
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final opciones in menuOptions){
      appRoutes.addAll({opciones.route:(BuildContext context) => opciones.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    print(settings);
    return MaterialPageRoute(builder:(context) => const AlertScreen());
  }
}