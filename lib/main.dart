import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
  XylophoneApp()
  );

class XylophoneApp extends StatelessWidget {
  Future<void> playsound(int soundNumber) async {
     final player = AudioPlayer();
     await player.play(AssetSource('note$soundNumber.wav'));
  }

   buildbutton({required Color color, required int soundNumber}){
   return Container(
                child: TextButton(
                  style:ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(color),
                  ),
                  onPressed: () async {
                    playsound(soundNumber);
                  },
                  child: Text(
                      'click me'
                  ),
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
            crossAxisAlignment:CrossAxisAlignment.stretch ,
            children: [
              //button 1
              buildbutton(color: Colors.red,soundNumber: 1),
              SizedBox(height: 10,),
              //buttton 2
              buildbutton(color: Colors.orange,soundNumber: 2),
              SizedBox(height: 10,),
              //button 3
             buildbutton(color: Colors.yellow,soundNumber: 3),
              SizedBox(height: 10,),
              //button 4
              buildbutton(color: Colors.green,soundNumber: 4),
              SizedBox(height: 10,),
              //button 5
              buildbutton(color: Colors.greenAccent,soundNumber: 5),
              SizedBox(height: 10,),
              //button 6
              buildbutton(color: Colors.blue,soundNumber: 6),
              SizedBox(height: 10,),
              //button 7
              buildbutton(color: Colors.purple,soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
