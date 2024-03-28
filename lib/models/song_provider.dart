import 'package:flutter/material.dart';
import 'package:music_player_app/models/song.dart';

class SongProvider extends ChangeNotifier {
  // list song
  final List<Song> _playList = [
    Song(
      songName: "Tình Ta Hai Ngã",
      artistName: "Rin Music Remix",
      imagePath: "assets/images/image1.jpg",
      audioPath: "assets/audios/remix1.mp3",
    )
  ];

  // current song index
  int? _currentSongIndex;

  // getter
  List<Song> get playList => _playList;
  int? get currentSongIndex => _currentSongIndex;

  // setter currentSongIndex
  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;
    notifyListeners();
  }
}
