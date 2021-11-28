class UserModel {
  // int? id;
  // String? name;
  // String? userName; that values will pass may be null or provided later

  int id;
  String name;
  String userName;
  // List<dynamic> address = [ ];
  UserModel(
      {required this.id,
      required this.name,
      required this.userName,
      // required this.address
      });
}
