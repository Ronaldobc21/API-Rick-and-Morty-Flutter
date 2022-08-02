import 'package:flutter/material.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({Key? key, required this.icon}) : super(key: key);
  final Icon icon;


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: () {
        print('Exit App');
      },
    );
  }
}
