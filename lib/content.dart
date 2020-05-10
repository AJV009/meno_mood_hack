import 'dart:io';
import 'dart:io' show File;
import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:barbarian/barbarian.dart';

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
  // in-app browser
  static openBrowserTab(String url) async { await FlutterWebBrowser.openWebPage(url: url, androidToolbarColor: Colors.pink.shade100); }
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
  // health data
  List water = [];
  List period = [];
  List sleep = [];
  // damn call everything I know of!
  makeList(){
    insights();
    blogify();
    activify();
    musicify();
    speakfy();
    theAbout();
  }
  // ------------------------ TODO: Insights
  insights() async {
    insightsWid.add(blogsnip("Nothing to show, prototype Stage", "https://github.com/AJV009/meno_mood_hack"));
  }
  // ----------------------------
  // blogsnipmaker downloader
  blogify() async {
    String jsonfile = "https://raw.githubusercontent.com/AJV009/meno_mood_hack/master/netData/blog.json";
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String savePath = appDirectory.path+"/blog.json";
    try {await Dio().download(jsonfile,savePath);}
    catch(e){}
    Map jsondata = json.decode(await new File(savePath).readAsString());
    jsondata.forEach((key, value) {
      blogWid.add(blogsnip(key, value));
    });
  }
  // create blogsnip widgets
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
  // --------------------- TODO: Activity
  activify() async {
    barbaDataCheck();
//    activityWid.add(
//
//    );
  }
  barbaDataCheck() async {
    await Barbarian.init();
    try {
      water = Barbarian.read('water');
      period = Barbarian.read('period');
      sleep = Barbarian.read('sleep');
    }
    catch(e){}
    Barbarian.write('water', water);
    Barbarian.write('period', period);
    Barbarian.write('sleep', sleep);
  }
  // ----------------------------
  musicify() async {
    String jsonfile = "https://raw.githubusercontent.com/AJV009/meno_mood_hack/master/netData/music.json";
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String savePath = appDirectory.path+"/music.json";
    try {await Dio().download(jsonfile,savePath);}
    catch(e){}
    Map jsondata = json.decode(await new File(savePath).readAsString());
    jsondata.forEach((key, value) {
      YoutubePlayerController controller = YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(value),
          flags: YoutubePlayerFlags( autoPlay: false, loop: true) );
      audWid.add(YoutubePlayer( controller: controller, showVideoProgressIndicator: false, ));
    });
  }
  // ----------------- TODO: voice assistant
  speakfy(){
    voiceWid.add(blogsnip("Nothing to show, prototype Stage", "https://github.com/AJV009/meno_mood_hack"));
  }
  // ---------------- TODO: About
  theAbout(){
    aboutWid.add(blogsnip("Nothing to show, prototype Stage", "https://github.com/AJV009/meno_mood_hack"));
  }
  // ----------------------------
}