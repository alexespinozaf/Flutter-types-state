import 'package:estados/pages/primera_page.dart';
import 'package:estados/pages/segunda_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      routes: {
        'pagina1': (_) => PrimeraPage(),
        'pagina2': (_) => SegundaPage(),
      },
    );
  }
}
