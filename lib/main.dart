import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'content.dart';

Content cont = new Content();
void main() => runApp(MaterialApp( home: MenoMood(),  title: 'MenoHack', ), );
class MenoMood extends StatefulWidget { @override _MenoMoodState createState() {
  cont.blogify(cont.fileDownloader(cont.blogNetPath, cont.blogFilePath));

  return _MenoMoodState(); } }
class _MenoMoodState extends State<MenoMood> {
  int _page = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Menopause Mood Hack!',
          style: TextStyle(fontFamily: 'Lobster', fontSize: 30),),
          backgroundColor: Colors.pink,),
        bottomNavigationBar: CurvedNavigationBar( index: 0, height: 50.0, items: cont.menuIcons,
          color: Colors.yellow.shade200, buttonBackgroundColor: Colors.white, backgroundColor: Colors.teal.shade700,
          animationCurve: Curves.easeInOut, animationDuration: Duration(milliseconds: 300),
          onTap: (index) { setState(() { _page = index; }); },
        ),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/images/splash.png'), fit: BoxFit.cover)),
          child: Center( child: ListView(children: cont.changePage(_page) ), ),
        ),
    );
  }
}
