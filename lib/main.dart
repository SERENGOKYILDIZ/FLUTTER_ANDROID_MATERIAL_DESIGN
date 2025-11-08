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
      body: GridView.count(
        crossAxisCount: 2, ///-> Bir satırda kaç eleman olacak
        childAspectRatio: 2 / 1, ///-> Her eleman için oranlama yapar 2'e 1 yaptık.
        children: [
          InkWell( ///-> GestureDetector ile aynı ama animasyonlu
            onTap: (){
              print("Güneş");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wb_sunny),
                  Text("Güneş"),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.brightness_2),
                Text("Ay"),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Text("Yıldız"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
