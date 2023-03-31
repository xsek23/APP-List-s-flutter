import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/ciudades.dart';
import 'package:flutter_application_3/models/productos.dart';
import 'package:flutter_application_3/pages/detallesCiudad.dart';
import 'package:flutter_application_3/pages/ListaCiudades.dart';
import 'package:flutter_application_3/pages/LoginPagina.dart';
import 'package:flutter_application_3/pages/detallesProducto.dart';

import '../pages/HomePage.dart';
import '../pages/SplashPagina.dart';
import '../pages/listaProductos.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes{
  return{
    Routes.login: (context) => const LoginPagina(),
    Routes.listaciudades: (context) => ListaCiudades(),
    Routes.listaproductos: (context) => ListaProdcutos(),
    Routes.splash: (context) => const SplashPagina(),
    Routes.ciudad: (context) {
      final Ciudades ciudad = ModalRoute.of(context)!.settings.arguments as Ciudades;
      return DetallesCiudad(
        city:ciudad
      );
    },
     Routes.home: (context) {
      final username = ModalRoute.of(context)!.settings.arguments as String;
      return HomePage(
        username
      );
    },
     Routes.infoproductos: (context) {
      final Productos productos = ModalRoute.of(context)!.settings.arguments as Productos;
      return DetallesProducto(
        producto:productos
      );
    },
  };
  
}