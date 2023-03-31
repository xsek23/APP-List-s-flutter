import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/ciudades.dart';
import 'package:flutter_application_3/pages/LoginPagina.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import '../routes/routes.dart';
import 'Global.dart';

class DetallesCiudad extends StatelessWidget {
  final Ciudades city;

  const DetallesCiudad({super.key, required this.city});


  @override
  Widget build(BuildContext context) {
    final texts = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(city.name), 
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Hero(
                tag: "foto${city.id}",
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(city.foto),
                ),
              ),
            ),
            Text(city.name,
              style: const TextStyle(
                fontSize: 30
              ),
            ),
            Padding(padding: const EdgeInsets.fromLTRB(50,20,50,1),
              child: Text(city.descripcion,
              style: const TextStyle(
                fontSize: 22
              ),
            ),
            ),
            ElevatedButton(
              onPressed: ()=> showDialog(
                context: context, 
                builder: (BuildContext context) => AlertDialog(
                title: Text(texts.eliminar),
                content: Text(texts.textoeliminar),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context ,texts.cancelar),
                    child: Text(texts.cancelar), 
                      ),
                  TextButton(
                  onPressed: (){
                    ciudades.remove(city);
                    Navigator.pushReplacementNamed(context, Routes.listaciudades , arguments: userController.text);
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

