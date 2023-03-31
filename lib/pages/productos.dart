
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/app_Setting.dart';
import 'package:flutter_application_3/routes/routes.dart';
import '../models/productos.dart';
import 'package:intl/intl.dart';

import 'Global.dart';
class Products extends StatefulWidget {
  final Productos name;
  const Products(this.name, {super.key});
   @override
     State<StatefulWidget> createState() => ViajeState();
}
class ViajeState extends State<Products>{

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>  Navigator.pushNamed(context, Routes.infoproductos, arguments: widget.name),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Hero(
              tag: "foto${widget.name.name}",
              child: Image.network(widget.name.foto, width: 150)
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Vuelo: "),
                  Text("Ciudad: ${widget.name.name}"),
                  Text("Precio: ${NumberFormat.currency(locale: finalLocale).format(widget.name.precio)}"),
                  Text("Fecha alta: ${widget.name.fechaalta}"),
                  ], 
                  //Text("Fecha alta: ${DateFormat.yMMMd('en_US').format(name)})//
              ),
            )
          ],
        ),
      ),
    );
  }
  
  }
