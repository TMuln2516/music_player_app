import 'package:flutter/material.dart';
import 'package:music_player_app/components/my_drawer.dart';
import 'package:music_player_app/models/song.dart';
import 'package:music_player_app/models/song_provider.dart';
import 'package:music_player_app/screens/song_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final dynamic songProvider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // get playlistProvider
    songProvider = Provider.of<SongProvider>(context, listen: false);
  }

  void gotoSong(int songIndex) {
    //update songIndex
    songProvider.currentSongIndex = songIndex;

    // push
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SongScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "PLAYLIST",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const MyDrawer(),
      body: Consumer<SongProvider>(
        builder: (context, value, child) {
          // get playList
          final List<Song> playList = value.playList;

          // return UI
          return ListView.builder(
            itemCount: playList.length,
            itemBuilder: (context, index) {
              Song song = playList[index];
              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image.asset(song.imagePath),
                onTap: () => gotoSong(index),
              );
            },
          );
        },
      ),
    );
  }
}
