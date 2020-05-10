import 'dart:io';
import 'dart:io' show File;
import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:path_provider/path_provider.dart';

class Content {
  // ----------------------------
  static double _widSize = 25;
// bottom bar icons
  List<Widget> menuIcons = [
    Icon(Icons.assessment, size: _widSize),
    Icon(Icons.art_track, size: _widSize),
    Icon(Icons.assignment_turned_in, size: _widSize),
    Icon(Icons.library_music, size: _widSize),
    Icon(Icons.record_voice_over, size: _widSize),
    Icon(Icons.help_outline, size: _widSize), ];
// widget lists
  List<Widget> insightsWid = [head("Insights"),];
  List<Widget> blogWid = [head("Blogs"),];
  List<Widget> activityWid = [head("Activity"),];
  List<Widget> aboutWid = [head("About"),];
  List<Widget> audWid = [head("Listen"),];
  List<Widget> voiceWid = [head("Speakup"),];
// change page code
  changePage(int index){
    if (index == 0) return insightsWid;
    else if (index == 1) return blogWid;
    else if (index == 2) return activityWid;
    else if (index == 3) return audWid;
    else if (index == 4) return voiceWid;
    else if (index == 5) return aboutWid;
  }
  String blogFilePath = "/blog.json";
  String blogNetPath = "https://raw.githubusercontent.com/AJV009/meno_mood_hack/master/netData/blog.json";
  String musicFilePath = "/music.json";
  String musicNetPath = "https://raw.githubusercontent.com/AJV009/meno_mood_hack/master/netData/music.json";
  // json file downloader
  jsonify(String jsonNetPath, String fileName) async {
    String jsonfile = jsonNetPath;
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String savePath = appDirectory.path+fileName;
    await Dio().download(jsonfile,savePath);
    Map jsondata = json.decode(await new File(savePath).readAsString());
    jsondata.forEach((key, value) {
      blogWid.add(blogsnip(key, value));
    });
  }
  // ----------------------------
// head of every page
  static Widget head(String txt){
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox( width: double.infinity,
        child: MaterialButton( disabledColor: Colors.yellow.shade300,
          child: Text(txt, style: TextStyle(fontSize: 40.0, fontFamily: 'Righteous', color: Colors.blue.shade400,), ),
        ),
      ),
    );
  }
  // ----------------------------
  // TODO: Insights (local linear regression, reports)
  // ----------------------------
// function to fetch and insert data to BLOG widgets

  // open browser code
  static openBrowserTab(String url) async { await FlutterWebBrowser.openWebPage(url: url, androidToolbarColor: Colors.pink.shade100); }

// create blogsniip widgets
  static Widget blogsnip(String desc, String url) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        width: double.infinity,
        child: FlatButton(
            color: Colors.pink.shade50,
            onPressed: () => openBrowserTab(url),
            child: Text(desc, style: TextStyle(fontSize: 20.0,),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
// ----------------------------
// TODO: Activity (record - periods, sleep, water intake)
//Map periodTable =
// ----------------------------
// TODO: Listen (music)

// ----------------------------
// TODO: Speakup (speakup to doctors)
// ----------------------------
// TODO: About
// ----------------------------
}