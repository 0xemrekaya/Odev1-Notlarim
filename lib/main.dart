import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("myapp stfless build");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'sa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  var sinif = 5;
  var baslik = "Öğrenciler";
  var ogrenciler = ["Ali", "Ayşe", "Can"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(baslik),
            Column(
              children: [
                Container(
                  color: Colors.red,
                ),
              ],
            ),
            Column(
              children: [],
            ),
            for (final o in ogrenciler) Text(o),
            SingleChildScrollView(),
            Container(

              alignment: Alignment(0.7, 1),
              child: ElevatedButton(

                  onPressed: () {
                    setState(() {
                      ogrenciler.add('yeni');
                    });
                  },
                  child: Text('Ekle')),
            )
          ],
        ),
      ),
    );
  }
}
