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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, ///-> Satırdaki item sayisi
            childAspectRatio: 2 / 1, ///-> 2:Genişlik, 1: Yükseklikk oranında
        ),
        itemCount: ulkeler.length,
        itemBuilder: (context, indeks){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ulkeler[indeks], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Spacer(),
                  PopupMenuButton(
                    child: Icon(Icons.more_vert),
                    itemBuilder: (context) => [
                      PopupMenuItem(value: 1, child: Text("Sil")),
                      PopupMenuItem(value: 2, child: Text("Güncelle")),
                    ],
                    onSelected: (menuItemValue) {
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
          );
        },
      )
    );
  }
}
