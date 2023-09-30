class UserModel {
  String? uId;
  String? name;
  String? pNumber;
  String? city;
  String? fcmToken;
  DateTime? createAt;

  UserModel(
      {this.uId,
      this.name,
      this.pNumber,
      this.city,
      this.fcmToken,
      this.createAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'];
    name = json['name'];
    pNumber = json['pNumber'];
    city = json['city'];
    fcmToken = json['fcmToken'];
    createAt = DateTime.fromMillisecondsSinceEpoch(json['createAt']);
  }

  Map<String, dynamic> toJson() => {
        "uId": uId,
        "name": name,
        "pNumber": pNumber,
        "city": city,
        "fcmToken": fcmToken,
        "createAt": createAt!.millisecondsSinceEpoch,
      };
}
