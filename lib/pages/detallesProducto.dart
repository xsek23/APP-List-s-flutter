import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/productos.dart';
import 'package:flutter_application_3/pages/LoginPagina.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import '../routes/routes.dart';
import 'Global.dart';

class DetallesProducto extends StatelessWidget {
  final Productos producto;

  const DetallesProducto({super.key, required this.producto});


  @override
  Widget build(BuildContext context) {

    
     final texts = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(producto.name), 
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Hero(
                tag: "foto${producto.id}",
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(producto.foto),
                ),
              ),
            ),
            Text(producto.name,
              style: const TextStyle(
                fontSize: 30
              ),
            ),
            Text(NumberFormat.currency().format(producto.precio),
              style: const TextStyle(
                fontSize: 20
              ),
            ),
            Padding(padding: const EdgeInsets.fromLTRB(50,20,50,1),
              child: Text(producto.descripcion,
              style: const TextStyle(
                fontSize: 22
              ),
            ),
            ),
            ElevatedButton(
              onPressed: ()=> showDialog(
                context: context, 
                builder: (BuildContext context) => AlertDialog(
                title:  Text(texts.eliminar),
                content: Text(texts.textoeliminar),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context ,texts.cancelar),
                    child: Text(texts.cancelar), 
                      ),
                  TextButton(
                  onPressed: (){
                    productos.remove(producto);
                    Navigator.pushReplacementNamed(context, Routes.listaproductos , arguments: userController.text);
                    }, 
                  child: Text(texts.aceptar))
                ],
              )),
            child: Text(texts.eliminar)
            )
          ],
        ),
      ),
    );
  }
}

