import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import '../routes/routes.dart';

class SplashPagina extends StatefulWidget {
  const SplashPagina({super.key});
  @override
  State<SplashPagina> createState() => _SplashPaginaState();
}

class _SplashPaginaState extends State<SplashPagina> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
    ).then((value) => {Navigator.pushReplacementNamed(context, Routes.login)});
  }

  @override
  Widget build(BuildContext context) {
    final texts = AppLocalizations.of(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 50.0,
          ),
          const Text('HECTOR app'),
          SizedBox(
            height: 200.0,
            child: Stack(
              children: <Widget>[
                Center(
                  child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          'https://t4.ftcdn.net/jpg/04/51/74/43/360_F_451744391_932DU0eXgGbpDZhcemuTjz1jTlqiCuIF.jpg')
                          ),
                )
              ],
            ),
          ),

          Center (child: Text(texts.eslogan)),
          const Center(child: SizedBox(
            child: CircularProgressIndicator(),
          ),)
         ],
      ),
    );
  }
}
