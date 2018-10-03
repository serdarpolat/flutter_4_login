import 'package:flutter/material.dart';
import './home_page.dart';

class GirisSayfasi extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/icon.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'serdar.plt21@gmail.com',
        contentPadding: EdgeInsets.all(20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );

    final sifre = TextFormField(
      obscureText: true,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Şifre',
        contentPadding: EdgeInsets.all(20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );

    final giriSBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.purple,
        elevation: 7.0,
        child: RaisedButton(
          splashColor: Colors.white,
          color: Color(0xFFCF3785),
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text('Giriş Yap', style: TextStyle(color: Colors.white, fontSize: 24.0),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () {
            Navigator.of(context).pushNamed(AnaSayfa.tag);
          },
        ),
      ),
    );

    final sifremiUnuttum = FlatButton(
      child: Text('Şifremi Unuttum', style: TextStyle(color: Colors.black87),),
      onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0,),
            email,
            SizedBox(height: 8.0,),
            sifre,
            SizedBox(height: 14.0,),
            giriSBtn,
            sifremiUnuttum
          ],
        ),
      ),
    );
  }
  
}
