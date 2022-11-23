import 'package:counter_7/model/mywatchlists.dart';
import 'package:counter_7/page/mywatchlists_page.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/data.dart';

class DrawerClass extends StatefulWidget {
  DrawerClass({Key? key}) : super(key: key);

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // other children,
          ListTile(
            leading: Icon(Icons.numbers),
            title: Text("Counter"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const CounterPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text("Tambah Budget"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddBudgetPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.data_array),
            title: Text("Data Budget"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BudgetDataPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.watch_later),
            title: Text("My Watchlist"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WatchList()),
              );
            },
          ),
        ],
      ),
    );
  }
}