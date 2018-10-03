import 'package:flutter/material.dart';
import './login_page.dart';

class AnaSayfa extends StatelessWidget {
  static String tag = 'ana-sayfa';

  @override
  Widget build(BuildContext context) {
    final hero = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/hero.png'),
        ),
      ),
    );

    final karsilama = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Hoş Geldiniz!',
        style: TextStyle(fontSize: 30.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır',
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFFCF3785), Color(0xFF17A8C4)]),
      ),
      child: Column(
        children: <Widget>[
          hero,
          SizedBox(
            height: 48.0,
          ),
          karsilama,
          SizedBox(
            height: 18.0,
          ),
          lorem,
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Anasayfa',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(GirisSayfasi.tag);
          },
        ),
      ),
      body: body,
    );
  }
}
