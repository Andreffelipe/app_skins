import 'package:flutter/material.dart';
import 'package:skins/core/wall/pollfish.dart';
import 'package:skins/dependency.dart';
import 'package:skins/ui/constants.dart';
import 'package:skins/ui/customButton.dart';
import 'package:skins/ui/snackBar.dart';

class Earn extends StatefulWidget {
  const Earn({Key? key}) : super(key: key);
  @override
  _EarnState createState() => _EarnState();
}

class _EarnState extends State<Earn> {
  @override
  void initState() {
    sl<IPollFish>().init();
    super.initState();
  }

  @override
  void dispose() {
    sl<IPollFish>().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      child: InkWell(
        onTap: () {
          show(context);
        },
        child: Center(
          child: Text(
            'Earn',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6),
          ),
        ),
      ),
    );
  }

  Future<void> show(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset(
                  "assets/pollfish_icon.png",
                  width: Constants.buttonWidth,
                ),
                title: new Text('pollfish'),
                onTap: () {
                  sl<IPollFish>().show();
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/adgatemedia_icon.png",
                  width: Constants.buttonWidth,
                ),
                title: new Text('Adgatemedia'),
                onTap: () {
                  GlobalSnackBar.show(context,
                      message: "Coming sun",
                      labelContent: Container(
                        child: Text("Coming sun"),
                      ));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/adscendmedia_icon.png",
                  width: Constants.buttonWidth,
                ),
                title: new Text('adscendmedia'),
                onTap: () {
                  GlobalSnackBar.show(context,
                      message: "Coming sun",
                      labelContent: Container(
                        child: Text("Coming sun"),
                      ));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/fyber_icon.png",
                  width: Constants.buttonWidth,
                ),
                title: new Text('fyber'),
                onTap: () {
                  GlobalSnackBar.show(context,
                      message: "Coming sun",
                      labelContent: Container(
                        child: Text("Coming sun"),
                      ));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/ironsource_icon.png",
                  width: Constants.buttonWidth,
                ),
                title: new Text('ironsource'),
                onTap: () {
                  GlobalSnackBar.show(context,
                      message: "Coming sun",
                      labelContent: Container(
                        child: Text("Coming sun"),
                      ));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/tapjoy_icon.png",
                  width: Constants.buttonWidth,
                ),
                title: new Text('tapjoy'),
                onTap: () {
                  GlobalSnackBar.show(context,
                      message: "Coming sun",
                      labelContent: Container(
                        child: Text("Coming sun"),
                      ));
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
