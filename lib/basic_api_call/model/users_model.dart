

class UserModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  UserModel({this.id, this.userId, this.title, this.completed});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      completed: json["completed"]);
}
