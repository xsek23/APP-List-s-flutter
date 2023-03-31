import 'package:flutter_application_3/models/productos.dart';
import 'package:flutter_application_3/pages/app_Setting.dart';
import '../models/ciudades.dart';
final  List<Ciudades> ciudades = [
    Ciudades(1, "Barcelona","ESPAÑA",
        "https://interrailero.com/wp-content/uploads/2022/01/que-ver-en-barcelona-mapa.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",200000),
    Ciudades(2, "Madrid","ESPAÑA",
        "https://www.spain.info/export/sites/segtur/.content/imagenes/cabeceras-grandes/madrid/calle-gran-via-madrid-s333961043.jpg_1014274486.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",200000),
    Ciudades(3, "Aragon","ESPAÑA",
        "https://lonelyplanetes.cdnstatics2.com/sites/default/files/styles/max_1300x1300/public/fotos/espana_aragon_teruel_albarracin_shutterstock_168271859_iakov_filimonov_shutterstock.jpg?itok=J8jxS14T","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",50443),
    Ciudades(4, "Albacete","ESPAÑA",
        "https://mediaim.expedia.com/destination/1/948d81203367d240a88cca760ba89b3d.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",200000),
    Ciudades(5, "Andorra","Andorra",
        "https://cdn.businessinsider.es/sites/navi.axelspringer.es/public/media/image/2021/02/pont-paris-andorra-vella-2241959.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",200000),
    Ciudades(6, "Granada","ESPAÑA",
        "https://www.barcelo.com/guia-turismo/wp-content/uploads/2020/05/que-visitar-en-granada.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",200000),
    Ciudades(7, "Londres","",
        "https://www.kaplaninternational.com/files/styles/hero_banner_k_mb/public/school/gallery/kaplan-english-school-in-London-4.jpg?itok=1UoqLcJ0","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",200000),
    Ciudades(8, "Venecia","sddasdasd",
        "https://a.cdn-hotels.com/gdcs/production65/d79/389c4f8f-d0e2-4a03-8999-78eaa83084f4.jpg?impolicy=fcrop&w=800&h=533&q=medium","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",200000),
    Ciudades(9, "Fiorenza","Italias",
        "https://previews.123rf.com/images/vrabelpeter1/vrabelpeter11512/vrabelpeter1151200238/50063633-florencia-en-italiano-florencia-forma-alternativa-obsoleta-fiorenza-lat%C3%ADn-florentia-es-la-capital-de.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.",3423423),
    Ciudades(10, "Manrresa","ESPAÑA",
        "https://fotos.hoteles.net/articulos/manresa-ciudad-medieval-en-barcelona-3479-1.jpg","efewfwefwfw",200000)
  ];
  final  List<Productos> productos = [
    Productos(1, "Barcelona",200,
        "https://interrailero.com/wp-content/uploads/2022/01/que-ver-en-barcelona-mapa.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3-3-2023"),
    Productos(2, "Madrid",100,
        "https://www.spain.info/export/sites/segtur/.content/imagenes/cabeceras-grandes/madrid/calle-gran-via-madrid-s333961043.jpg_1014274486.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3-3-2023"),
    Productos(3, "Aragon",300,
        "https://lonelyplanetes.cdnstatics2.com/sites/default/files/styles/max_1300x1300/public/fotos/espana_aragon_teruel_albarracin_shutterstock_168271859_iakov_filimonov_shutterstock.jpg?itok=J8jxS14T","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3-3-2023"),
    Productos(4, "Albacete",250,
        "https://mediaim.expedia.com/destination/1/948d81203367d240a88cca760ba89b3d.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3-3-2023"),
    Productos(5, "Andorra",2040,
        "https://cdn.businessinsider.es/sites/navi.axelspringer.es/public/media/image/2021/02/pont-paris-andorra-vella-2241959.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3-3-2023"),
    Productos(6, "Granada",700,
        "https://www.barcelo.com/guia-turismo/wp-content/uploads/2020/05/que-visitar-en-granada.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3-3-2023"),
    Productos(7, "Londres",7000,
        "https://www.kaplaninternational.com/files/styles/hero_banner_k_mb/public/school/gallery/kaplan-english-school-in-London-4.jpg?itok=1UoqLcJ0","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3/3/2023"),
    Productos(8, "Venecia",200,
        "https://a.cdn-hotels.com/gdcs/production65/d79/389c4f8f-d0e2-4a03-8999-78eaa83084f4.jpg?impolicy=fcrop&w=800&h=533&q=medium","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3/3/2023"),
    Productos(9, "Fiorenza",800,
        "https://previews.123rf.com/images/vrabelpeter1/vrabelpeter11512/vrabelpeter1151200238/50063633-florencia-en-italiano-florencia-forma-alternativa-obsoleta-fiorenza-lat%C3%ADn-florentia-es-la-capital-de.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3-3-2023"),
    Productos(10, "Manrresa",200000,
        "https://fotos.hoteles.net/articulos/manresa-ciudad-medieval-en-barcelona-3479-1.jpg","efewfwefwfw","20-03-2023")
  ];
  final  List<Ciudades> ciudadesUSA = [
    Ciudades(1, "Barcelona","ESPAÑA",
        "https://interrailero.com/wp-content/uploads/2022/01/que-ver-en-barcelona-mapa.jpg","ttttttttt",200000),
    Ciudades(2, "Madrid","ESPAÑA",
        "https://www.spain.info/export/sites/segtur/.content/imagenes/cabeceras-grandes/madrid/calle-gran-via-madrid-s333961043.jpg_1014274486.jpg","ttttttttt",200000),
    Ciudades(3, "Aragon","ESPAÑA",
        "https://lonelyplanetes.cdnstatics2.com/sites/default/files/styles/max_1300x1300/public/fotos/espana_aragon_teruel_albarracin_shutterstock_168271859_iakov_filimonov_shutterstock.jpg?itok=J8jxS14T","ttttttttt",50443),
    Ciudades(4, "Albacete","ESPAÑA",
        "https://mediaim.expedia.com/destination/1/948d81203367d240a88cca760ba89b3d.jpg","ttttttttt",200000),
    Ciudades(5, "Andorra","Andorra",
        "https://cdn.businessinsider.es/sites/navi.axelspringer.es/public/media/image/2021/02/pont-paris-andorra-vella-2241959.jpg","ttttttttt",200000),
    Ciudades(6, "Granada","ESPAÑA",
        "https://www.barcelo.com/guia-turismo/wp-content/uploads/2020/05/que-visitar-en-granada.jpg","ttttttttt.",200000),
    Ciudades(7, "Londres","",
        "https://www.kaplaninternational.com/files/styles/hero_banner_k_mb/public/school/gallery/kaplan-english-school-in-London-4.jpg?itok=1UoqLcJ0","ttttttttt",200000),
    Ciudades(8, "Venecia","sddasdasd",
        "https://a.cdn-hotels.com/gdcs/production65/d79/389c4f8f-d0e2-4a03-8999-78eaa83084f4.jpg?impolicy=fcrop&w=800&h=533&q=medium","ttttttttt",200000),
    Ciudades(9, "Fiorenza","Italia",
        "https://previews.123rf.com/images/vrabelpeter1/vrabelpeter11512/vrabelpeter1151200238/50063633-florencia-en-italiano-florencia-forma-alternativa-obsoleta-fiorenza-lat%C3%ADn-florentia-es-la-capital-de.jpg","ttttttttt",3423423),
    Ciudades(10, "Manrresa","ESPAÑA",
        "https://fotos.hoteles.net/articulos/manresa-ciudad-medieval-en-barcelona-3479-1.jpg","efewfwefwfw",200000)
  ];
  final  List<Productos> productosUSA = [
    Productos(1, "Barcelona",200,
        "https://interrailero.com/wp-content/uploads/2022/01/que-ver-en-barcelona-mapa.jpg","tttttttt","3/03/2023"),
    Productos(2, "Madrid",100,
        "https://www.spain.info/export/sites/segtur/.content/imagenes/cabeceras-grandes/madrid/calle-gran-via-madrid-s333961043.jpg_1014274486.jpg","tttttt","3/03/2023"),
    Productos(3, "Aragon",300,
        "https://lonelyplanetes.cdnstatics2.com/sites/default/files/styles/max_1300x1300/public/fotos/espana_aragon_teruel_albarracin_shutterstock_168271859_iakov_filimonov_shutterstock.jpg?itok=J8jxS14T","tttttt","3/03/2023"),
    Productos(4, "Albacete",250,
        "https://mediaim.expedia.com/destination/1/948d81203367d240a88cca760ba89b3d.jpg","ttttt","3-3-2023"),
    Productos(5, "Andorra",2040,
        "https://cdn.businessinsider.es/sites/navi.axelspringer.es/public/media/image/2021/02/pont-paris-andorra-vella-2241959.jpg","ttttttt","3/03/2023"),
    Productos(6, "Granada",700,
        "https://www.barcelo.com/guia-turismo/wp-content/uploads/2020/05/que-visitar-en-granada.jpg","ttt","24-5-2023"),
    Productos(7, "Londres",7000,
        "https://www.kaplaninternational.com/files/styles/hero_banner_k_mb/public/school/gallery/kaplan-english-school-in-London-4.jpg?itok=1UoqLcJ0","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3/3/2023"),
    Productos(8, "Venecia",200,
        "https://a.cdn-hotels.com/gdcs/production65/d79/389c4f8f-d0e2-4a03-8999-78eaa83084f4.jpg?impolicy=fcrop&w=800&h=533&q=medium","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3/3/2023"),
    Productos(9, "Fiorenza",800,
        "https://previews.123rf.com/images/vrabelpeter1/vrabelpeter11512/vrabelpeter1151200238/50063633-florencia-en-italiano-florencia-forma-alternativa-obsoleta-fiorenza-lat%C3%ADn-florentia-es-la-capital-de.jpg","Lorem ipsum dolor sit amet consectetur adipiscing, elit dis congue mattis dapibus habitasse, ante purus senectus semper enim. Montes imperdiet et suspendisse etiam blandit scelerisque porttitor, facilisis in ac integer dignissim eu sollicitudin vulputate, luctus porta ut lobortis facilisi molestie.","3/3/2023"),
    Productos(10, "Manrresa",200000,
        "https://fotos.hoteles.net/articulos/manresa-ciudad-medieval-en-barcelona-3479-1.jpg","efewfwefwfw","20-03-2023")
  ];
  String finalLocale = defaultLocale;
  Map<String, List<Productos>> mapGeneral = {
    'en':productosUSA,
    'es': productos
  };
   Map<String, List<Ciudades>> mapGeneral2 = {
    'en':ciudadesUSA,
    'es': ciudades
  };