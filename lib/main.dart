import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'blog.dart';
import 'insights.dart';
import 'activity.dart';
import 'about.dart';

void main() => runApp(MaterialApp(
    home: MenoMood(),
  title: 'MenoHack',
),
);
class MenoMood extends StatefulWidget {
  @override
  _MenoMoodState createState() => _MenoMoodState();
}

class _MenoMoodState extends State<MenoMood> {
  int _page = 0;
  List<Widget> _pageContent = [];
  double widSize = 30;
  changePage(){
    setState(() {
      if (_page == 0) {_pageContent = blogwid;}
      else if (_page == 1) {_pageContent = insightwid;}
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Menopause Mood Hack!'), ),
        bottomNavigationBar: CurvedNavigationBar(
//          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: widSize),
            Icon(Icons.art_track, size: widSize),
            Icon(Icons.assessment, size: widSize),
            Icon(Icons.assignment_turned_in, size: widSize),
            Icon(Icons.help_outline, size: widSize),
          ],
          color: Colors.white, buttonBackgroundColor: Colors.white, backgroundColor: Colors.teal.shade700,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) { setState(() { _page = index; changePage(); }); },
        ),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/images/h1.jpg'), fit: BoxFit.cover)),
          child: Center( child: Column(
              children: _pageContent ),
          ),
        ),
    );
  }
}
