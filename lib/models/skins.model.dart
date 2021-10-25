const fn = "Factory new";
const mn = "Minimal Wear";
const ft = "Field-Tested";
const ww = "Well-Worm";
const bs = "Battle-Scarred";
enum Quality { fn, mn, ft, ww, bs }

class SkinsModel {
  late String id;
  late String image;
  late String name;
  late int price;
  late bool statTrak;
  late bool available;
  late String quality;

  SkinsModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    image = json["image"];
    name = json["name"];
    price = json["price"];
    statTrak = json["statTrak"];
    available = json["available"];
    quality = json["quality"];
  }
}
