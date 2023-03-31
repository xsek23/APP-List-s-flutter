import 'package:flutter/material.dart';
import 'package:flutter_application_3/routes/routes.dart';
import 'package:flutter_application_3/routes/appRoutes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'Global.dart';
import 'app_Setting.dart';

void main (){
  Intl.defaultLocale = defaultDeviceLanguage;
  // ignore: prefer_const_constructors
  runApp(MyApp());

}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => MainState();
}
class MainState extends State{
  late Locale _locale;
  Locale get locale => _locale;

  final _supportedLocales = const [
    Locale('es'),
    Locale('en'),
    Locale('es_ES'),
    Locale('en_US')

  ];
  @override 
  void initState(){
    String finalLocale = defaultLocale;
    super.initState();
    _locale = Locale(defaultLocale, defaultLanguage);
  }
  void changeLanguage(Locale locale){
    setState(() {
      print(locale);
      _locale = locale; 
      finalLocale = locale.toString().substring(0,2);     
    });
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Listas',
       localizationsDelegates: const[
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: _supportedLocales,
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      initialRoute: Routes.splash,
    
    );
  }
  
}

late final String user; 
final userController = TextEditingController();
final passController = TextEditingController();
class LoginPagina extends StatefulWidget {
  const LoginPagina({super.key});

  @override 
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPagina>{
@override
Widget build (BuildContext context){
  return Scaffold(
    body: Stack(
      children: [
        Fondo(),
        const Contenido()
      ],
    ),
  );
}
}
class Contenido extends StatefulWidget{
  const Contenido({super.key});

  @override
  _ContenidoState createState() => _ContenidoState();
}
class _ContenidoState extends State<Contenido>{
  @override
  Widget build(BuildContext context){
    final texts = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            texts.bienvenida,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          MyCustomForm(),
        ],
      ),
    );
  }
}
String pattern = r'(^[a-zA-Z ]*$)';
 RegExp regExp = RegExp(pattern);

class MyCustomForm extends StatefulWidget{
  @override
  MyCustomFormState createState(){
    return MyCustomFormState();
  }
}
final _formKey = GlobalKey<FormState>();
class MyCustomFormState  extends State<MyCustomForm>{
  
  @override 
  bool obs = true; 
  @override 
  Widget build(BuildContext context){
    final texts = AppLocalizations.of(context);
    return Form(
     key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            texts.emaillogin,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            validator: (value)  {
              if(value!.isEmpty){
                return texts.warnignlogintexto;
              }
            },
            controller: userController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: texts.emaillogin,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
           Text(
            texts.passwordlogin,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
             validator: (value)  {
              if(value!.length < 7){
                return texts.warninglogin7car;
              }
              if (!regExp.hasMatch(value)) {
              return texts.warnignloginfaltancar;
              }
            },
            controller: passController,
            obscureText: obs,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: texts.passwordlogin,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Botones(),
        ],
      ),
    );
  }
}

class Botones extends StatelessWidget{
  bool _login(){
    return userController.text == "hector" && passController.text == "pass12345" ? true : false;
  }
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height:  50,
          child: ElevatedButton(
            onPressed: (){
              if (_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Verificando...")));
              }
                if (_login()){
                Navigator.pushReplacementNamed(context, Routes.home, arguments: userController.text);
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 35, 55, 121)),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,

              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height:  50,
          child: ElevatedButton(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 54, 106, 240)),
            ),
            child: const Text(
              'Registro',
              style: TextStyle(
                color: Colors.white,

              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
      ],
    );
  }
}

class Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade300,
            Colors.blue,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        )
      ),

    );
  }
}

