import 'package:flutter/material.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/datawatchlist.dart';

class dataBudget extends StatefulWidget {
  const dataBudget({super.key});

  @override
  State<dataBudget> createState() => _dataBudgetState();
}

class _dataBudgetState extends State<dataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: "Program Counter")),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const dataBudget()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const dataWatchlist()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(4),
            elevation: 8,
            child: ListTile(
              title: Text(MyBudget.getList()[index].judul,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: Text(MyBudget.getList()[index].budget.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
              trailing: Text(MyBudget.getList()[index].jenisBudget,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),

      

          );
        },
        itemCount: MyBudget.getList().length,
      ),
    );
  }
}
