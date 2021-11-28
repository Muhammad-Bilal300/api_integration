import 'package:flutter/material.dart';
import 'package:practice/services/user_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUser(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(child: const CircularProgressIndicator());
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${snapshot.data[index].id}"),
                    title: Text(snapshot.data[index].name),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(snapshot.data[index].userName),

                        // Text(snapshot.data[index].address),
                      ],
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
