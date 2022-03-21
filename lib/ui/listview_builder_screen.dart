import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = List.generate(20, (index) => "iTeqno - ListView Builder ${index + 1}");

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(list[index]),
              ));
            }),
      ),
    );
  }
}
