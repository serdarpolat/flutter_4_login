import 'package:flutter/material.dart';
import './login_page.dart';
import './home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  final sayfalar = <String, WidgetBuilder> {
    GirisSayfasi.tag: (context) => GirisSayfasi(),
    AnaSayfa.tag: (context) => AnaSayfa(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Polat',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'JosefinSans',
      ),
      home: GirisSayfasi(),
      routes: sayfalar,
    );
  }
}
