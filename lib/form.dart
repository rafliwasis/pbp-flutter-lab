import 'package:counter_7/model/budget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/databudget.dart';
import 'package:flutter/material.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judulBudget = "";
  int _nominalBudget = 0;
  String jenis = 'Pengeluaran';
  List<String> listJenis = ['Pengeluaran', 'Pemasukan'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Budget'),
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
                    MaterialPageRoute(
                        builder: (context) =>
                            const dataBudget()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
                child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Judul",
                                icon: const Icon(Icons.people),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _judulBudget = value!;
                                });
                              },
                              onSaved: (String? value) {
                                setState(() {
                                  _judulBudget = value!;
                                });
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Judul tidak boleh kosong!';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Nominal",
                                icon: const Icon(Icons.people),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _nominalBudget = int.parse(value!);
                                });
                              },
                              onSaved: (String? value) {
                                setState(() {
                                  _nominalBudget = int.parse(value!);
                                });
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Nominal tidak boleh kosong!';
                                }
                                if (int.tryParse(value) == null) {
                                  return 'Nominal haruslah angka brok!';
                                }
                                _nominalBudget = int.parse(value);
                                return null;
                              },
                            ),
                          ),
                          ListTile(
                            leading: const Icon(Icons.class_),
                            title: const Text(
                              'Pilih Jenis',
                            ),
                            trailing: DropdownButton(
                              value: jenis,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: listJenis.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  jenis = newValue!;
                                });
                              },
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                MyBudget.insertToList(
                                    _judulBudget, _nominalBudget, jenis);
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 15,
                                      child: Container(
                                        child: ListView(
                                          padding: const EdgeInsets.only(
                                              top: 20, bottom: 20),
                                          shrinkWrap: true,
                                          children: <Widget>[
                                            Center(
                                                child: const Text(
                                                    'Informasi Data')),
                                            SizedBox(height: 20),
                                            Center(
                                              child: Text(
                                                  'Data berhasil disimpan brok'),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('Kembali'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "Simpan",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ])))));
  }
}
