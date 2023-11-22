import 'package:flutter/material.dart';
import 'package:itemopia/screen/itemopia_form.dart';
import 'package:itemopia/widget/left_drawer.dart';
import 'package:itemopia/ProductTablePage.dart';
import 'package:itemopia/data_manager.dart';

class ShopItem {
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int get counter => _counter; // Metode getter

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final List<ShopItem> items = [
    ShopItem("Lihat Produk", Icons.checklist),
    ShopItem("Tambah Produk", Icons.add_shopping_cart),
    ShopItem("Logout", Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Itemopia',
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: LeftDrawer(), // Menghapus const pada LeftDrawer()

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'PBP Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {Key? key}) : super(key: key);

  Color getButtonColor(String itemName) {
    switch (itemName) {
      case "Lihat Produk":
        return Colors.red; // Set color for "Lihat Produk" to red
      case "Tambah Produk":
        return Color.fromARGB(
            255, 78, 117, 149); // Set color for "Tambah Produk" to yellow
      case "Logout":
        return const Color.fromARGB(
            255, 67, 139, 69); // Set color for "Logout" to green
      default:
        return Colors.blue; // Set a default color if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: getButtonColor(item.name),
      child: InkWell(
        onTap: () {
          if (item.name == "Tambah Produk") {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ShopFormPage()),
            );
          } else if (item.name == "Lihat Produk") {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    ProductTablePage(products: DataManager.products),
              ),
            );
          } else {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!"),
              ));
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
