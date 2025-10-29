import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var formKey = GlobalKey<FormState>();
    var tfUsername = TextEditingController();
    var tfPassword= TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Başlık", style: TextStyle(color: Colors.white, fontSize: 16)),
            Text("Alt Başlık", style: TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
        // centerTitle: true, ///-> Başlık ortalanır.
        leading: IconButton( ///-> leading sol taraf oluyor.
          tooltip: "Menu Icon",
          icon: Icon(Icons.dehaze),
          onPressed: (){
            print("Menu ikon tıklandı!");
          },
        ),
        actions: [ ///-> actions sağ taraf oluyor.
          TextButton(
            child: Text("ÇIKIŞ", style: TextStyle(color: Colors.white)),
            onPressed: (){
              print("ÇIKIŞ tıklandı!");
            },
          ),
          IconButton(
            tooltip: "Bilgi",
            icon: Icon(Icons.info_outline),
            onPressed: (){
              print("Bilgi ikon tıklandı!");
            },
          ),
          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Sil"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Güncelle"),
              ),
            ],
            onSelected: (index){
              if(index == 1){
                print("Popup'da Sil seçildi!");
              }
              if(index == 2){
                print("Popup'da Güncelle seçildi!");
              }
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}
