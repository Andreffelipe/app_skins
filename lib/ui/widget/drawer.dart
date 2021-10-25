import 'package:flutter/material.dart';
import 'package:skins/controller/carController.dart';
import 'package:skins/dependency.dart';
import 'package:skins/ui/skins.dart';
import 'package:skins/ui/widget/drawer_collapse.dart';
import 'package:skins/ui/widget/drawer_item.dart';
import 'package:skins/ui/widget/drawer_user.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key, required this.closeFunction}) : super(key: key);
  final Function closeFunction;

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late double height;
  late double width;
  double backgroundOpacity = 0;
  bool isCollapsed = true;
  bool isCollapsedAfterSec = true;

  void initializeAnimation() {
    _controller = AnimationController(
      duration: Duration(
        milliseconds: 500,
      ),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    );
    startAnimation();
  }

  void startAnimation() {
    _controller.forward();
    _animation.addListener(() {
      setState(() {
        backgroundOpacity = 0.7 * _animation.value;
      });
    });
  }

  void stopAnimation() {
    _controller.stop();
  }

  void reverseAnimation() {
    _controller.reverse();
  }

  void onCollapseTap() {
    if (isCollapsed) {
      Future.delayed(Duration(
        milliseconds: 70,
      )).then((value) {
        setState(() {
          isCollapsedAfterSec = !isCollapsedAfterSec;
        });
      });
    } else if (!isCollapsed) {
      setState(() {
        isCollapsedAfterSec = !isCollapsedAfterSec;
      });
    }
    setState(() {
      isCollapsed = !isCollapsed;
    });
  }

  @override
  void initState() {
    super.initState();
    initializeAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(
        backgroundOpacity,
      ),
      body: Row(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (ctx, child) {
              return AnimatedContainer(
                duration: Duration(
                  milliseconds: 70,
                ),
                width: (isCollapsed)
                    ? width * .2 * _animation.value
                    : width * .65 * _animation.value,
                margin: EdgeInsets.only(
                  left: width * .06 * _animation.value,
                  top: height * .05,
                  bottom: height * .05,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff3b3b3b),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: (_animation.value > 0.7)
                    ? Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          DrawerItem(
                            onTap: () {},
                            icon: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            onTap: () {},
                            icon: Icon(
                              Icons.card_giftcard,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Giveaways',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const Skins(),
                                ),
                              );
                            },
                            child: DrawerItem(
                              onTap: () {},
                              icon: Icon(
                                Icons.shop,
                                color: Colors.white,
                                size: 35,
                              ),
                              label: Text(
                                'Get Skins',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              isCollapsed: isCollapsedAfterSec,
                            ),
                          ),
                          DrawerItem(
                            onTap: () {},
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 4',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            onTap: () {},
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 5',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            onTap: () {},
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 6',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            onTap: () {},
                            icon: Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Notification',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          Spacer(),
                          DrawerUser(
                            afterCollapse: 'AW',
                            beforeCollapse: 'Aashar Wahla',
                            isCollapsed: isCollapsed,
                          ),
                          // * Bottom Toggle Button
                          if (_controller.value >= 1)
                            DrawerCollapse(
                              isCollapsed: isCollapsed,
                              onTap: onCollapseTap,
                            ),
                        ],
                      )
                    : SizedBox(),
              );
            },
          ),

          // * The left area on the side which will used
          // * to close the drawer when tapped

          Expanded(
            flex: 3,
            child: Container(
              child: GestureDetector(
                onTap: () {
                  reverseAnimation();
                  Future.delayed(
                    Duration(
                      milliseconds: 500,
                    ),
                  ).then(
                    (value) => widget.closeFunction(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
