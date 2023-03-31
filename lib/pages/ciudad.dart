import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/ciudades.dart';
import 'package:flutter_application_3/routes/routes.dart';
import 'package:intl/intl.dart';

class City extends StatefulWidget {
  final Ciudades name;
  const City(this.name, {super.key});
  @override
  State<StatefulWidget> createState() => CiudadState();
}
  class CiudadState extends State<City>{
  @override
  Widget build(BuildContext context) {
/// Para escuchar los "movimientos" del usuario y dar efectos
    return InkWell(
      onTap: () =>  Navigator.pushNamed(context, Routes.ciudad, arguments: widget.name),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Hero(
              tag: "foto${widget.name.id}",
              child: Image.network(widget.name.foto, width: 150)
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name.name),
                  Text("Pais: ${widget.name.pais}"),
                  Text("Pupulation: ${NumberFormat('####.##').format(widget.name.population)}"),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }

  }
