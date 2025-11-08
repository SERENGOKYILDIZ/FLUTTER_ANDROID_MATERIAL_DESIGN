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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Text("Material Design")
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.sunny),
            title: Text("Güneş"),
            subtitle: Text("Büyük gezegen"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Güneş'e tıklandı!");
            },
          ),
          ListTile(
            leading: Icon(Icons.mode_night),
            title: Text("Ay"),
            subtitle: Text("Uydu gezegen"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Ay'a tıklandı!");
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Yıldız"),
            subtitle: Text("Güzel şeyler"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Yıldız'a tıklandı!");
            },
          ),
          GestureDetector(
            onTap: (){
              print("Kart'a tıklandı!");
            },
            child: Card(
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text("Cart Tasarm"),
                    Spacer(),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print("Container'a tıklandı!");
            },
            child: Container(
              height: 50,
              color: Colors.red,
              child: Text("Container Tasarım"),
            ),
          )
        ],
      )
    );
  }
}
