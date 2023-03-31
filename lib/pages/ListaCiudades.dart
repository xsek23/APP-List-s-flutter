import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'HomePage.dart';
import 'ciudad.dart';
import 'Global.dart';

class ListaCiudades extends StatefulWidget {
  const ListaCiudades({super.key});

   @override
  State<StatefulWidget> createState() => ListCiudades();
 
}
class ListCiudades extends State{
  @override
  Widget build(BuildContext context) {
    final texts = AppLocalizations.of(context);
   final Locale appLocale = Localizations.localeOf(context);
    return  Scaffold(
        appBar: AppBar(
          title: Text(texts.ciudades),
          actions: languageSelector(context),
        ),
        body: ListView(
           children: mapGeneral2[appLocale.languageCode]!.map((name) => City(name)).toList(), 
           //mapGeneral[appLocale.languageCode]!.map((name) => City(name)).toList(),
        )
    );
  }
}