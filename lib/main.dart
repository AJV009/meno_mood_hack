import 'package:flutter/material.dart';
import 'blog.dart';
Blog blog = new Blog();
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MenoMood(),
    ); } }
class MenoMood extends StatefulWidget { _MenoMoodState createState() => _MenoMoodState(); }
class _MenoMoodState extends State<MenoMood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade700,
      appBar: AppBar(title: Text('Meno Mood Hack'), backgroundColor: Colors.pink.shade400,
      actions: <Widget>[
        FlatButton(onPressed: () { setState(() {
          blog.build(this.context);
        }); }, child: Text('data')),
      ],),
      body: Container(
        child: SafeArea(
          child: Text('data'),
        ),
      ),
    );
  }
}