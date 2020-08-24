import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
void main() {
  
  return runApp(
      sound());
}
class sound extends StatelessWidget {

 Expanded buttonpressed ({Color c , int numsound} ){
   return Expanded(
     child: FlatButton(
       color: c,
       onPressed: (){
         final  player = AudioCache() ;
         player.play('note$numsound.wav');
       },
     ),
   );
 }
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
          body: SafeArea(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonpressed(c :Colors.purple , numsound : 1),
              buttonpressed(c :Colors.green , numsound : 2),
              buttonpressed(c :Colors.blue , numsound : 3),
              buttonpressed(c :Colors.red , numsound : 4),
              buttonpressed(c :Colors.amber , numsound : 5),
              buttonpressed(c :Colors.orange , numsound : 6)
         ], ),
      )));}}