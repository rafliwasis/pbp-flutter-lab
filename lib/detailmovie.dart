import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';

import 'databudget.dart';
import 'datawatchlist.dart';
import 'form.dart';

class detailMovie extends StatelessWidget {
  final Mywatchlist moviedetail;
  const detailMovie({super.key, required this.moviedetail});

  String checkStatus(Watched status) {
    if (status == Watched.NO) {
      return "Belum";
    } else {
      return "Sudah";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
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
              title: const Text('My WatchList'),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
          ),

          // Title
          Center(
            child: Text(moviedetail.fields.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),

          // Release Date
          Container(
            margin: const EdgeInsets.only(left: 10.0, top: 20.0),
            child: Text.rich(TextSpan(
                text: 'Release Date: ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                children: <InlineSpan>[
                  TextSpan(
                    text: moviedetail.fields.releaseDate,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  )
                ])),
          ),

          // Rating
          Container(
            margin: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text.rich(TextSpan(
                text: 'Rating: ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                children: <InlineSpan>[
                  TextSpan(
                    text: moviedetail.fields.rating,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  )
                ])),
          ),
          
          // Status
          Container(
            margin: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text.rich(TextSpan(
                text: 'Status: ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                children: <InlineSpan>[
                  TextSpan(
                    text: checkStatus(moviedetail.fields.watched),
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  )
                ])),
          ),

          // Review
          Container(
            margin: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text.rich(TextSpan(
                text: 'Review: ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                children: <InlineSpan>[
                  TextSpan(
                    text: moviedetail.fields.review,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  )
                ])),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Center(
            child: Text('Back'),
          ),
        ),
      ),
    );
  }
}
