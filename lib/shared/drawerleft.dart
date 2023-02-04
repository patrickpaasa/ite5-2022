import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerLeft extends StatefulWidget {
  final String fullname;

  const DrawerLeft({super.key, required this.fullname});

  @override
  State<DrawerLeft> createState() => _DrawerLeftState();
}

class _DrawerLeftState extends State<DrawerLeft> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 720
          ? MediaQuery.of(context).size.width * .3
          : MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height,
      color: Colors.red[50],
      child: Center(child: Text(widget.fullname)),
    );
  }
}
