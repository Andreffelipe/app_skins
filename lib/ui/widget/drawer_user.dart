import 'package:flutter/material.dart';
import 'package:skins/globals.dart';

class DrawerUser extends StatefulWidget {
  const DrawerUser({
    Key? key,
    required this.afterCollapse,
    required this.beforeCollapse,
    required this.isCollapsed,
  }) : super(key: key);
  final bool isCollapsed;
  final String beforeCollapse;
  final String afterCollapse;
  @override
  _DrawerUserState createState() => _DrawerUserState();
}

class _DrawerUserState extends State<DrawerUser> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      curve: Curves.linear,
      duration: Duration(
        milliseconds: 100,
      ),
      width: (widget.isCollapsed) ? width * .15 : width * .6,
      height: width * .15,
      decoration: BoxDecoration(
        borderRadius: (widget.isCollapsed)
            ? BorderRadius.circular((width * .15) / 5)
            : BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: (widget.isCollapsed) ? 2 : 2,
        ),
      ),
      child: FittedBox(
        child: (widget.isCollapsed)
            ? Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white38, width: 2),
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(100),
                ),
              )
            : Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white38, width: 2),
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user!.name,
                              style: TextStyle(
                                fontSize: 20,
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
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .1,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10, right: 3),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.exit_to_app,
                            size: 40,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
