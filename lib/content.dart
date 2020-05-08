import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class Content {
  static double _widSize = 30;

  List<Widget> menuIcons = [
    Icon(Icons.home, size: _widSize),
    Icon(Icons.art_track, size: _widSize),
    Icon(Icons.assessment, size: _widSize),
    Icon(Icons.assignment_turned_in, size: _widSize),
    Icon(Icons.help_outline, size: _widSize), ];

  List<Widget> homeWid = [blogsnip('url', 'desc')];
  List<Widget> blogWid = [];
  List<Widget> insightsWid = [];
  List<Widget> activityWid = [];
  List<Widget> aboutWid = [];

  changePage(int index){
//    Content cont = new Content();
    if (index == 0) return homeWid;
    else if (index == 1) return blogWid;
    else if (index == 2) return insightsWid;
    else if (index == 3) return activityWid;
    else if (index == 4) return aboutWid;
  }

  static Widget blogsnip(String url,String desc) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: FlatButton(
        color: Colors.pink.shade50,
          onPressed: () => openBrowserTab("something"),
          child: Text('FLutter')),
      );
  }

  static openBrowserTab(String url) async { await FlutterWebBrowser.openWebPage(url: url, androidToolbarColor: Colors.pink.shade100); }

}