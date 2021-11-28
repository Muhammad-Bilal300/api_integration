import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practice/models/user_model.dart';

getUser() async {
  var response =
      await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
  var jsonData = jsonDecode(response.body);
  List<UserModel> users = [];
  for (var i in jsonData) {
    UserModel user =
        UserModel(id: i["id"], name: i["name"], userName: i["username"]);
    users.add(user);
  }
  return users;
}
