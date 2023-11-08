import 'package:flutter/material.dart';
import 'package:itemopia/menu.dart';
import 'package:itemopia/itemopia_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Column(
              children: [
                Text(
                  'Itemopia',
                  textAlign: TextAlign.center, // Memindahkan textAlign ke sini
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text('Tambah Produk'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShopFormPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
