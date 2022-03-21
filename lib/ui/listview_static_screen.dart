import 'package:flutter/material.dart';

class ListviewStaticScreen extends StatelessWidget {
  const ListviewStaticScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = List.generate(20, (index) => "iTeqno Data ${index + 1}");

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Static'),
      ),
      body: ListView(
        children: list
            .map((value) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(value),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
