import 'package:flutter/material.dart';
import 'package:skins/globals.dart';
import 'package:skins/main.dart';
import 'package:skins/ui/rewarded.dart';
import 'package:skins/ui/widget/content_home.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 100,
                  child: Text("Skins Lab"),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white38, width: 2),
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        user!.name,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        user!.email,
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.cyan,
                      Colors.purple,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text(user!.coins.toString()), Text("Coins")],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(user!.ticket.toString()),
                          Text("Ticket")
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("3000"), Text("Referral")],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Rewarded(), Content()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
