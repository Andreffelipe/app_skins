class UserModel {
  late String id;
  late String name;
  late String email;
  late int coins;
  late int ticket;
  late String referral;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    email = json["email"];
    coins = json["coins"];
    ticket = json["ticket"];
    referral = json["referral"];
  }
}
