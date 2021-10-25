import 'package:flutter/material.dart';
import 'package:skins/ui/customButton.dart';
import 'package:skins/ui/custonDialogBox.dart';
import 'package:skins/ui/modalEarn.dart';
import 'package:skins/ui/skins.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white38,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 25,
        crossAxisSpacing: 25,
        children: [
          Earn(),
          CustomButton(
            child: Container(
              child: Center(child: Text("Daily Bonus")),
            ),
          ),
          CustomButton(
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => CustomDialogBox(
                    title:
                        "Invite friends and receive 10% of life time earning",
                    descriptions: "",
                    text: "Confirmar",
                    img: Image.asset("assets/noun_social.png"),
                  ),
                );
              },
              child: Center(child: Text("Invite ref")),
            ),
          ),
        ],
      ),
    );
  }
}
