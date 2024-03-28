import 'package:flutter/material.dart';
import 'package:music_player_app/screens/settings_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // logo
          DrawerHeader(
            child: Icon(
              Icons.music_note_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          // Title
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: ListTile(
              onTap: () => Navigator.pop(context),
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text(
                "HOME",
                style: TextStyle(
                  letterSpacing: 5,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              ),
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text(
                "SETTINGS",
                style: TextStyle(
                  letterSpacing: 5,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
