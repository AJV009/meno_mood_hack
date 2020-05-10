import 'dart:io';
import 'dart:io' show File;
import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
  makeList(){
    ConnectivityResult connectivity;
    print(connectivity);
    insights();
    blogify();
    musicify();
  }
  // ----------------------------
  insights() {
    insightsWid.add(blogsnip("Nothing to show, prototype Stage", "https://github.com/AJV009/meno_mood_hack"));
  }
  // ----------------------------
  // blogsnipmaker downloader
  blogify() async {
    String jsonfile = "https://raw.githubusercontent.com/AJV009/meno_mood_hack/master/netData/blog.json";
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String savePath = appDirectory.path+"/blog.json";
    await Dio().download(jsonfile,savePath);
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
  // ----------------------------
  activify(){
    activityWid.add(blogsnip("Nothing to show, prototype Stage", "https://github.com/AJV009/meno_mood_hack"));
  }
  // ----------------------------
  musicify() async {
    String jsonfile = "https://raw.githubusercontent.com/AJV009/meno_mood_hack/master/netData/music.json";
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String savePath = appDirectory.path+"/music.json";
    await Dio().download(jsonfile,savePath);
    Map jsondata = json.decode(await new File(savePath).readAsString());
    jsondata.forEach((key, value) {
      YoutubePlayerController controller = YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(value),
          flags: YoutubePlayerFlags( autoPlay: false, loop: true) );
      audWid.add(YoutubePlayer( controller: controller, showVideoProgressIndicator: false, ));
    });
  }
  // ----------------------------
  speakfy(){
    voiceWid.add(blogsnip("Nothing to show, prototype Stage", "https://github.com/AJV009/meno_mood_hack"));
  }
  // ----------------------------
  theAbout(){
    aboutWid.add(blogsnip("Nothing to show, prototype Stage", "https://github.com/AJV009/meno_mood_hack"));
  }
  // ----------------------------
}