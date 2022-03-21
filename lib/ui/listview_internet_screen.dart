import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_widget/data/model/base_response.dart';
import 'package:listview_widget/data/repository/iteqno_repository.dart';

class ListviewInternetScreen extends StatelessWidget {
  const ListviewInternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Internet Data'),
      ),
      body: FutureBuilder(
        future: IteqnoRepository().getData('api', {"results": "20"}),
        builder: (BuildContext context, AsyncSnapshot<BaseResponse> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            final data = snapshot.data?.results;
            return ListView.builder(
                itemCount: data?.length,
                itemBuilder: (context, index) {
                  final item = data?[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 32,
                          foregroundImage: NetworkImage(item!.picture.medium),
                        ),
                        title: Text("${item.name.title}, ${item.name.first} ${item.name.last}"),
                        subtitle: Text("${item.location.state}, ${item.location.country}"),
                      ),
                    ),
                  );
                });
          } else {
            return const Center(child: Text('Error loading data'));
          }
        },
      ),
    );
  }
}
