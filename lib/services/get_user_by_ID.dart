import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practice/models/user_model.dart';

getUserByID() async {
  var response =
      await http.get(Uri.https("jsonplaceholder.typicode.com", "users/1"));
  var jsonData = jsonDecode(response.body);
  // List<UserModel> users = [];

  UserModel user = UserModel(
      id: jsonData["id"],
      name: jsonData["name"],
      userName: jsonData["username"]);
  // users.add(user);

  return user;
}
