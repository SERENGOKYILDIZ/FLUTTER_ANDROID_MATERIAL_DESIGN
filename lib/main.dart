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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ulkeler[indeks], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          );
        },
      )
    );
  }
}
