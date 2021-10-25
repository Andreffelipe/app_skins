import 'package:flutter/widgets.dart';
import 'package:skins/globals.dart';
import 'package:skins/models/skins.model.dart';
import 'package:skins/ui/snackBar.dart';

abstract class CarController {
  void addSkins(SkinsModel items, BuildContext context);
}

class CarImplementation extends CarController {
  int soma = 0;
  void addSkins(SkinsModel items, BuildContext context) {
    soma += items.price;
    print(soma);
    print(user!.coins);
    if (soma > user!.coins) {
      return GlobalSnackBar.show(context,
          message: "Coins insuficientes",
          labelContent: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Coins insuficientes")));
    }

    car.value.add(items);
  }
}
