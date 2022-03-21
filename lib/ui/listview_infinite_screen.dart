import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_widget/data/model/result.dart';
import 'package:listview_widget/data/repository/iteqno_repository.dart';

class ListviewInfiniteScreen extends StatefulWidget {
  const ListviewInfiniteScreen({Key? key}) : super(key: key);

  @override
  State<ListviewInfiniteScreen> createState() => _ListviewInfiniteScreenState();
}

class _ListviewInfiniteScreenState extends State<ListviewInfiniteScreen> {
  List<Result> results = [];
  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Infinite Scroll'),
      ),
      body: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          final item = results[index];
          if ((results.length - index) == 1) {
            currentPage++;
            getData();
            return const CupertinoActivityIndicator();
          } else {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 32,
                    foregroundImage: NetworkImage(item.picture.medium),
                  ),
                  title: Text("${item.name.title}, ${item.name.first} ${item.name.last}"),
                  subtitle: Text("${item.location.state}, ${item.location.country}"),
                ),
              ),
            );
          }
        },
      ),
    );
  }

  getData() async {
    IteqnoRepository().getData('api', {"results": "20", "page": "$currentPage"}).then((value) {
      setState(() {
        results.addAll(value.results);
      });
    });
  }
}
