import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  //playlist of songs
  final List<Song> _playlist = [
//song1
    Song(
        songName: "I see love",
        artistName: "Jonas Blue",
        albumArtImagePath: "assets/music_images/cover.jpg",
        audioPath: "assets/music/audio.mpeg"),

//song2
    Song(
        songName: "Pehle Bhi Main",
        artistName: "Raj Shekhar",
        albumArtImagePath: "assets/music_images/music_cover.jpg",
        audioPath: "assets/music/audio2.mpeg")
 
 
  ];

   //current song playing index
   int? _currentSongIndex;

   /*

   Getters

   */

List<Song> get playlist => _playlist;
int? get currentSongIndex => _currentSongIndex;


  /*Setters*/
set currentSongIndex(int? newIndex){
  //update current song index
  _currentSongIndex = newIndex;

  //update UI
  notifyListeners();
}


}
