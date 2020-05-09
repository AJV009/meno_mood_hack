import 'package:flutter/material.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class Content {
  static double _widSize = 25;

  List<Widget> menuIcons = [
    Icon(Icons.home, size: _widSize),
    Icon(Icons.art_track, size: _widSize),
    Icon(Icons.assessment, size: _widSize),
    Icon(Icons.assignment_turned_in, size: _widSize),
    Icon(Icons.library_music, size: _widSize),
    Icon(Icons.record_voice_over, size: _widSize),
    Icon(Icons.help_outline, size: _widSize),];

  List<Widget> homeWid = [head("Home"), blogsnip('url', 'desc')];
  List<Widget> blogWid = [head("Blogs"),];
  List<Widget> insightsWid = [head("Insights"),];
  List<Widget> activityWid = [head("Activity"),];
  List<Widget> aboutWid = [head("About"),];
  List<Widget> audWid = [head("Listen"),];
  List<Widget> voiceWid = [head("Speakup"),];

  changePage(int index){
//    Content cont = new Content();
    if (index == 0) return homeWid;
    else if (index == 1) return blogWid;
    else if (index == 2) return insightsWid;
    else if (index == 3) return activityWid;
    else if (index == 4) return audWid;
    else if (index == 5) return voiceWid;
    else if (index == 6) return aboutWid;
  }

  static Widget blogsnip(String url,String desc) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        width: double.infinity,
        child: FlatButton(
          color: Colors.pink.shade50,
            onPressed: () => openBrowserTab("something"),
            child: Text('FLutter')),
      ),
      );
  }
  static Widget head(String txt){
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        width: double.infinity,
        child: MaterialButton(
          disabledColor: Colors.yellow.shade300,
          child: Text(txt, style: TextStyle(fontSize: 40.0, fontFamily: 'Righteous', color: Colors.blue.shade400,), ),
        ),
      ),
    );
  }

  static openBrowserTab(String url) async { await FlutterWebBrowser.openWebPage(url: url, androidToolbarColor: Colors.pink.shade100); }
  static jsonify() {
    String jsonfile = "https://raw.githubusercontent.com/AJV009/meno_mood_hack/master/blog.json";
    
  }

}