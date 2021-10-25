import 'package:flutter/material.dart';
import 'package:skins/dependency.dart';
import 'package:skins/globals.dart';
import 'package:skins/theme.dart';
import 'package:skins/ui/home.dart';
import 'package:skins/ui/widget/drawer.dart';

void main() {
  initializeUser();
  init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myTheme,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void showDrawer() {
    print('tapped on show drawer!');
    setState(() {
      _showDrawer = !_showDrawer;
    });
  }

  bool _showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: showDrawer,
            //backgroundColor: Colors.black,
            child: Icon(
              Icons.menu_rounded,
            ),
          ),
          body: MyHomePage(),
        ),
        if (_showDrawer)
          DrawerWidget(
            closeFunction: showDrawer,
          ),
      ],
    );
  }
}
