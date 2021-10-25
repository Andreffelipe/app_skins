import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  const CustomButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white38,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.cyan.withOpacity(.3),
            Colors.purple.withOpacity(.3),
          ],
        ),
      ),
      child: child,
    );
  }
}
