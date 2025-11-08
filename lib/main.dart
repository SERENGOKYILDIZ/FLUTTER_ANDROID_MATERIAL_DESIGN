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

  Future<List<String>> verileriGetir() async {
    var veriler = ["Türkiye", "Almanya", "Çin", "Rusya", "Amerika", "Fransa"];
    return veriler;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Text("Material Design")
      ),
      body: FutureBuilder<List<String>>(
        future: verileriGetir(),
        builder: (context, snapshot){
          if(snapshot.hasData) ///-> Data varsa
            {
              var ulkeler = snapshot.data;

              return ListView.builder(
                itemCount: ulkeler!.length,
                itemBuilder: (context, indeks){
                  var ulke = ulkeler[indeks];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Text("${ulke}"),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          else ///-> Data yoksa boş gözükecek
            {
              return Center();
            }
        },
      )
    );
  }
}

