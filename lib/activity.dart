import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Activity'),
        ),
        body: Container(
          child: Text('ActivityPage!'),
        ));
  }
}