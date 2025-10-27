import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          title: Text("A New App"),
          centerTitle: true,
          foregroundColor: Color.fromARGB(255, 255, 239, 239),
          backgroundColor: Color.fromARGB(255, 16, 56, 39),
        );
  }
  
 @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}