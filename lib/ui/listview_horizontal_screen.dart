import 'package:flutter/material.dart';

class ListviewHorizontalScreen extends StatelessWidget {
  const ListviewHorizontalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Horizontal'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return const Card(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlutterLogo(size: 100),
              ));
            }),
      ),
    );
  }
}
