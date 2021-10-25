import 'package:flutter/material.dart';
import 'package:skins/ui/constants.dart';

class Rewarded extends StatelessWidget {
  const Rewarded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Constants.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skins Rewarded",
            style: TextStyle(fontSize: 15),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 100.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.grey,
                                  Colors.transparent,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
                                      scale: 10))),
                        ),
                        Text(
                          "Bowie Knife | Lore",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.grey,
                                  Colors.transparent,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
                                      scale: 10))),
                        ),
                        Text(
                          "Bowie Knife | Lore",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.grey,
                                  Colors.transparent,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_survival_bowie_cu_bowie_lore_light_large.83091fde14cb5dea85805779420387bdd18c6126.png",
                                      scale: 10))),
                        ),
                        Text(
                          "Bowie Knife | Lore",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
