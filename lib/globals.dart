import 'package:flutter/foundation.dart';
import 'package:skins/models/skins.model.dart';
import 'package:skins/models/user.model.dart';

ValueNotifier<List<SkinsModel>> car = ValueNotifier([]);

UserModel? user;

void initializeUser() {
  user = UserModel.fromJson({
    "id": "sdkfasdhfgshdg-dfasdf",
    "name": "Andre Felipe",
    "email": "meuemail@gmail.com",
    "coins": 20000,
    "ticket": 1564,
    "referral": "83091fd",
    "skins": [
      {
        "id": "83091fde14cb5dea85805",
        "image":
            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
        "name": "Bowie Knife | Lore",
        "price": 835069,
        "statTrak": false,
        "available": true,
        "quality": "FN"
      }
    ]
  });
  print("Andre Felipe");
  print(user!.name);
}

List skins = [
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
  {
    "id": "83091fde14cb5dea85805",
    "image":
        "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
    "name": "Bowie Knife | Lore",
    "price": 835069,
    "statTrak": false,
    "available": true,
    "quality": "FN"
  },
];
