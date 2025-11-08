import 'package:android_flutter_material_design/detay.dart';
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

  var ulkeler = ["Türkiye", "Almanya", "Çin", "Rusya", "Amerika", "Fransa"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Text("Material Design")
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context, indeks){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text(ulkeler[indeks]),
                    Spacer(),
                    PopupMenuButton(
                      child: Icon(Icons.more_vert),
                      itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text("Sil")),
                        PopupMenuItem(value: 2, child: Text("Güncelle")),
                      ],
                      onSelected: (menuItemValue){
                        if(menuItemValue == 1)
                        {
                          print("${ulkeler[indeks]} ülkesi silindi!");
                        }
                        if(menuItemValue == 2)
                        {
                          print("${ulkeler[indeks]} ülkesi güncellendi!");
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
