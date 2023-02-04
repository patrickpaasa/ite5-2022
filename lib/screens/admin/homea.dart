import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ite5_2022/models/names.dart';
import 'package:ite5_2022/models/tempdata.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  String jsonData = temporaryData().ddata;
  List<Names> theNames = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    theData();
  }

  void theData() {
    var theData = jsonDecode(jsonData) as List;
    theNames = theData.map((dname) {
      return Names(
        uid: dname['id'].toString(),
        firstName: dname['first_name'],
        lastName: dname['last_name'],
        email: dname['email'],
        gender: dname['gender'],
        photoUrl: dname['user_pic'],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext bcontext, BoxConstraints constraint) {
      if (constraint.maxWidth > 680) {
        return webView(context);
      } else {
        return mobView(context);
      }
    });
  }

  Widget webView(BuildContext context) {
    return Row(
      children: [
        leftDrawer(MediaQuery.of(context).size),
        Expanded(
            child: Scaffold(
          appBar: AppBar(
            title: const Text("Class Students"),
            elevation: 1,
          ),
        ))
      ],
    );
  }

  Widget mobView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class Students"),
        elevation: 1,
      ),
      drawer: leftDrawer(MediaQuery.of(context).size),
    );
  }

  Widget leftDrawer(Size dsize) {
    bool webv = true;
    if (dsize.width < 640) webv = false;
    return Container(
      color: Colors.white,
      width: webv ? 400 : dsize.width * .6,
      height: dsize.height,
    );
  }

  Widget getData() {
    return Container(
      child: Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.horizontal,
        children: [],
      ),
    );
  }
}
