import 'package:android_flutter_material_design/sayfa1.dart';
import 'package:android_flutter_material_design/sayfa2.dart';
import 'package:android_flutter_material_design/sayfa3.dart';
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
    return DefaultTabController(
      length: 3, ///-> Tab sayısı
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text("Material Design"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Bir",),
              Tab(icon: Icon(Icons.looks_two, color: Colors.cyanAccent)),
              Tab(text: "Üç", icon: Icon(Icons.looks_3, color: Colors.cyanAccent)),
            ],
            indicatorColor: Colors.pink, ///-> Seçim çubuğunun rengi
            labelColor: Colors.orange, ///-> Seçilen sayfa adının rengi
          ),
        ),
        body: TabBarView(
          children: [
            Sayfa1(),
            Sayfa2(),
            Sayfa3()
          ],
        )
      ),
    );
  }
}

