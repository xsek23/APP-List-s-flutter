import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/LoginPagina.dart';
import '../routes/Routes.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';

/*class HomePage extends StatelessWidget {
  final String username;
  HomePage(this.username);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: (){
               Navigator.pushNamed(context, Routes.listaciudades);
            },
            child: const Text('Lista de ciudades'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
               Navigator.pushNamed(context, Routes.listaproductos);
            },
            child: const Text('Lista de viajes'),
          ),
        ],
      ),
    );
  }
}*/

 
/*class HomePage extends StatelessWidget {
   final String username;
  HomePage(this.username);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          child: Text('Elevated Button'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            // side: BorderSide(color: Colors.yellow, width: 5),
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            shadowColor: Colors.lightBlue,
          ),
          onPressed: () {
               Navigator.pushNamed(context, Routes.listaproductos);
            },
        ),
      ),
    );
  }
}*/
 List<Widget> languageSelector(BuildContext context){
    final appState = context.findAncestorStateOfType<MainState>();
    return[
      DropdownButton(
        value: appState?.locale,
        icon: const Icon(Icons.language),
        items: const [
          DropdownMenuItem(
            value: Locale('en', 'US'),
            child: Text('English'),
            ),
            DropdownMenuItem(
              value: Locale('es','ES'),
              child: Text('Español')
              )
        ],
         onChanged: (locale) {
          if(locale != null){
            appState?.changeLanguage(locale);
          }
           }, 
        )
    ];
  }
class HomePage extends StatelessWidget {
   final String username;
  HomePage(this.username);
 @override
  Widget build(BuildContext context) {
     final texts = AppLocalizations.of(context);
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return  Scaffold(
        appBar: AppBar(
          title: Text('${texts.user} $username'),
          actions: languageSelector(context)
        ),
        body:  Center(
         child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: (){
               Navigator.pushNamed(context, Routes.listaciudades);
            },
            child: Text(texts.ciudades),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
               Navigator.pushNamed(context, Routes.listaproductos);
            },
            child: Text(texts.viajes),
          ),
        ],
      ),
        ),
    );
  }
}