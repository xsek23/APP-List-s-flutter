import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/productos.dart';
import 'Global.dart';
import 'HomePage.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';

///Hacerlo statefull
class ListaProdcutos extends StatefulWidget {
  const ListaProdcutos({super.key});

  @override
  State<StatefulWidget> createState() => ListaViajes();
}

class ListaViajes extends State {


@override
  Widget build(BuildContext context) {
      final texts = AppLocalizations.of(context);
       final Locale appLocale = Localizations.localeOf(context);
    return  Scaffold(
        appBar: AppBar(
          title: Text(texts.viajes),
            actions: languageSelector(context)
        ),
        body: ListView(
          children: mapGeneral[appLocale.languageCode]!.map((name) => Products(name)).toList(),
        )
    );
  }

}




