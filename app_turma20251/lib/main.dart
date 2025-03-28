import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu primeiro APP - Turma 25.1",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Primeiro APP"),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Oi, tudo bem?"),
            Center(
              child: Text(
                'Hello World',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 45),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("Apertou o botão cadastrar");
                  }, 
                  child: Text("Cadastrar"),
                  ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20),
                  child: Text("Login"),
                )
              ],
            ),
            Container(
              width: 100,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSidfKqObBg307erYqfx0BuI-sp0Bh5b3q4fw&s'),
            )
          ],
        ),
      ),
    );
  }
}
