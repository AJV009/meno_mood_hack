import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'content.dart';

void main() => runApp(MaterialApp( home: MenoMood(),  title: 'MenoHack', ), );
class MenoMood extends StatefulWidget { @override _MenoMoodState createState() => _MenoMoodState(); }

class _MenoMoodState extends State<MenoMood> {
  Content cont = new Content(); int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Menopause Mood Hack!'), backgroundColor: Colors.pink,),
        bottomNavigationBar: CurvedNavigationBar( index: 0, height: 50.0, items: cont.menuIcons,
          color: Colors.yellow.shade200, buttonBackgroundColor: Colors.white, backgroundColor: Colors.teal.shade700,
          animationCurve: Curves.easeInOut, animationDuration: Duration(milliseconds: 300),
          onTap: (index) { setState(() { _page = index; }); },
        ),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/images/h1.jpg'), fit: BoxFit.cover)),
          child: Center( child: Column( children: cont.changePage(_page) ), ),
        ),
    );
  }
}
