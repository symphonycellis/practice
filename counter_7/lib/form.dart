import 'package:flutter/material.dart';

import 'package:counter_7/drawer.dart';

import 'package:counter_7/objectBudget.dart';

import 'package:counter_7/showDataBudget.dart';


class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    int? _nominal = 0;
    String? _jenis;
    List<String> listJenis  = ['Pemasukan', 'Pengeluaran'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: buildDrawer(context),
      body: Form(
          key: _formKey,
          child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                ),
            padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      // Menggunakan padding sebesar 8 pixel
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Judul",
                                // Menambahkan circular border agar lebih rapi
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              // Menambahkan behavior saat nama diketik
                                onChanged: (String? value) {
                                    setState(() {
                                    _judul = value!;
                                    });
                                },
                                // Menambahkan behavior saat data disimpan
                                onSaved: (String? value) {
                                    setState(() {
                                    _judul = value!;
                                    });
                                },
                                // Validator sebagai validasi form
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                    return 'Judul tidak boleh kosong!';
                                    }
                                    return null;
                                },
                                ),
                                TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Nominal",
                                    border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                onChanged: (String? value) {
                                    setState(() {
                                    _nominal = int.tryParse(value!);
                                    });
                                },
                                // Menambahkan behavior saat data disimpan
                                onSaved: (String? value) {
                                    setState(() {
                                    _nominal = int.parse(value!);
                                    });
                                },
                                // Validator sebagai validasi form
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                    return 'Nominal tidak boleh kosong!';
                                    } 
                                    return null;
                                },
                                ),

                             ListTile(
                                trailing: DropdownButton(
                                value: _jenis,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: listJenis.map((String items) {
                                    return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                    );
                                }).toList(),
                                onChanged: (String? newValue) {
                                    setState(() {
                                    _jenis = newValue!;
                                    });
                                },
                                ),
                                ),

                                TextButton(
                                    child: const Text(
                                        "Simpan",
                                        style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                                    ),
                                    onPressed: () {
                                        if (_formKey.currentState!.validate()) {
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
                                                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                                                    shrinkWrap: true,
                                                    children: <Widget>[
                                                    TextButton(
                                                        onPressed: () {
                                                        if (_formKey.currentState!.validate()) {
                                                        objectBudget.data.add(
                                                            Budget(_judul, _nominal, _jenis!, ));
                                                            }
                                                        },
                                                        child: Text('Simpan'),
                                                    ), 
                                                    ],
                                                ),
                                                ),
                                            );
                                            },
                                        );
                                        }
                                    },
                                    ),
                            ])),  
                ],
              ))),
    );
  }

}