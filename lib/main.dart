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

  var Sayfalar = [Sayfa1(), Sayfa2(), Sayfa3()];
  int sayfaIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text("Material Design"),
      ),
      body: Sayfalar[sayfaIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, ///-> Başlık tam otursun diye yaptk
          children: [
            DrawerHeader(
                child: Text("BAŞLIK", style: TextStyle(color: Colors.white, fontSize: 30)),
                decoration: BoxDecoration(
                  color: Colors.deepPurple
                ),
            ),
            ListTile(
              title: Text("Sayfa 1"),
              onTap: (){
                setState(() {
                  sayfaIndex = 0;
                });
                Navigator.pop(context); ///-> Sayfa geçisi yapıldıktan sonra kapasın
              },
            ),
            ListTile(
              title: Text("Sayfa 2", style: TextStyle(color: Colors.pink)),
              onTap: (){
                setState(() {
                  sayfaIndex = 1;
                });
                Navigator.pop(context); ///-> Sayfa geçisi yapıldıktan sonra kapasın
              },
            ),
            ListTile(
              title: Text("Sayfa 3"),
              leading: Icon(Icons.looks_3, color: Colors.orange),
              onTap: (){
                setState(() {
                  sayfaIndex = 2;
                });
                Navigator.pop(context); ///-> Sayfa geçisi yapıldıktan sonra kapasın
              },
            ),
          ],
        ),
      ),
    );
  }
}

