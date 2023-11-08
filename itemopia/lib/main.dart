import 'package:flutter/material.dart';
import 'package:itemopia/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Itemopia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
        // Tambahkan warna yang sesuai dengan kebutuhan Anda, misalnya primarySwatch.
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
