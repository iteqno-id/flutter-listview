import 'package:flutter/material.dart';

class ListviewSeparatedScreen extends StatelessWidget {
  const ListviewSeparatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = List.generate(20, (index) => "iTeqno - ListView Separated ${index + 1}");

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Static'),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(list[index]),
            );
          },
          separatorBuilder: (context, index) => const Divider(
                color: Colors.green,
                thickness: 2,
                indent: 4,
                endIndent: 5,
              ),
          itemCount: list.length),
    );
  }
}
