import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skins/controller/carController.dart';
import 'package:skins/dependency.dart';
import 'package:skins/models/skins.model.dart';
import 'package:skins/globals.dart';

class Skins extends StatelessWidget {
  const Skins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Center(child: Icon(Icons.shopping_bag_outlined)),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: ValueListenableBuilder(
                      valueListenable: car,
                      child: Container(),
                      builder: (
                        BuildContext context,
                        List<SkinsModel> items,
                        Widget? child,
                      ) {
                        return Text(
                          items.length.toString(),
                          style: TextStyle(color: Colors.purpleAccent),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Shop"),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(user!.coins.toString()), Text("coins")],
            ),
          )
        ],
      ),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: skins.length,
              itemBuilder: (BuildContext ctx, index) {
                return appItems(SkinsModel.fromJson(skins[index]), context);
              })),
    );
  }

  Widget appItems(SkinsModel items, BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("clicou");
        sl<CarController>().addSkins(items, context);
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.cyan,
                Colors.purple,
              ],
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Container(
                child: Image.network(
              items.image,
              height: 200,
            )),
            Positioned(
              left: 10,
              child: Text(items.name),
            ),
            Positioned(
              right: 10,
              child: Text(items.quality),
            ),
            Positioned(
              right: 10,
              bottom: 0,
              child: items.available
                  ? Icon(
                      Icons.lock_open,
                      size: 20,
                    )
                  : Icon(
                      Icons.lock,
                      size: 20,
                    ),
            ),
            Positioned(
              left: 10,
              bottom: 0,
              child: Text("R\$ ${items.price.toString()}"),
            )
          ],
        ),
      ),
    );
  }
}
