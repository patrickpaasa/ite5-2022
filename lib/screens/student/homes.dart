import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ite5_2022/shared/drawerleft.dart';

class HomeStudent extends StatefulWidget {
  const HomeStudent({super.key});

  @override
  State<HomeStudent> createState() => _HomeStudentState();
}

class _HomeStudentState extends State<HomeStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Dashboard"),
        actions: [
          Builder(
              builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    icon: Container(child: Icon(Icons.account_circle_sharp)),
                  ))
        ],
      ),
      endDrawer: Container(
        width: MediaQuery.of(context).size.width * .5,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[50],
      ),
      drawer: DrawerLeft(fullname: "Miguel"),
      body: Container(),
    );
  }
}
