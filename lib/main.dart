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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Material Design"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: tfUsername,
                      decoration: InputDecoration(
                        labelText: "Kullanıcı adı",
                      ),
                      validator: (tfGirdisi){
                        if(tfGirdisi!.isEmpty){
                          return "Kullanıcı adı giriniz!";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: tfPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Şifre",
                      ),
                      validator: (tfGirdisi){
                        if(tfGirdisi!.isEmpty){
                          return "Şifre giriniz!";
                        }
                        if(tfGirdisi.length < 6){
                          return "Şifreniz en az 6 haneli olmalıdır!";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      child: Text("Giriş"),
                      onPressed: (){
                        bool kontrolSonucu = formKey.currentState!.validate();

                        if(kontrolSonucu){
                          String username = tfUsername.text;
                          String password = tfPassword.text;
                          print("Kullanıcı adı : ${username}, Şifre : ${password}");
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
