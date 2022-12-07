import 'package:flutter/material.dart';

import 'package:counter_7/drawer.dart';

import 'package:counter_7/objectBudget.dart';

import 'package:counter_7/form.dart';

class ShowDataBudget extends StatefulWidget {
  const ShowDataBudget({super.key});

  @override
  State<ShowDataBudget> createState() => _ShowDataBudgetState();
}

class _ShowDataBudgetState extends State<ShowDataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Budget'),
        ),
        drawer: buildDrawer(context),
        body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                    Text(
                        objectBudget.data[index].judul,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text(
                            objectBudget.data[index].nominal.toString(),
                        ),
                        Text(
                            objectBudget.data[index].jenis,
                        ),
                        ],
                    )
                ],
              ),
            ),
          );
        },
        itemCount: objectBudget.data.length,
      ),
        );
  }
}
