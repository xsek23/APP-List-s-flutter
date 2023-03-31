import 'dart:ui' as ui;
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'symbols.dart';


final defaultLocale = ui.window.locale.languageCode;
final defaultLanguage = ui.window.locale.countryCode;

String get defaultDeviceLanguage{
  String defLocale = defaultLocale;
  if (defaultLanguage != null){
    defLocale += '_$defaultLanguage';
  } 
  return defLocale;
}

Map<String, String> get internationalizationSettings {
  switch(defaultLocale){
    case 'es_ES':
      numberFormatSymbols['es_ES'] = 
        (numberFormatSymbols['es_ES'] as NumberSymbols).copyWith(currencySymbol: '€');

  return interES;
  case 'en_US':
      numberFormatSymbols[defaultLocale] = 
        (numberFormatSymbols[defaultLocale] as NumberSymbols).copyWith(currencySymbol: r'$');
  
  return interUSA;
  default:
  return interES;
}
}


Map<String, String> get interES => {
  'locale':'es_ES',
  'currency_symbol':'€',
};
Map<String, String> get interUSA => {
  'locale':'en_US',
  'currency_symbol':'\$',
};