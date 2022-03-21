import 'package:flutter/material.dart';
import 'package:listview_widget/ui/listview_builder_screen.dart';
import 'package:listview_widget/ui/listview_horizontal_screen.dart';
import 'package:listview_widget/ui/listview_infinite_screen.dart';
import 'package:listview_widget/ui/listview_internet_screen.dart';
import 'package:listview_widget/ui/listview_separated_screen.dart';
import 'package:listview_widget/ui/listview_static_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iTeqno ListView'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const ListviewStaticScreen()));
                },
                child: const Text('Static ListView')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const ListviewBuilderScreen()));
                },
                child: const Text('ListView Builder')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const ListviewSeparatedScreen()));
                },
                child: const Text('ListView Separated')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const ListviewHorizontalScreen()));
                },
                child: const Text('ListView Horizontal')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const ListviewInternetScreen()));
                },
                child: const Text('ListView Internet Data')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const ListviewInfiniteScreen()));
                },
                child: const Text('ListView Infinite Scroll')),
          ],
        ),
      ),
    );
  }
}
