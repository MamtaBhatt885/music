

import 'package:flutter/material.dart';
import 'package:music_player/components/splash_screen.dart';
import 'package:music_player/models/playlist_provider.dart';
import 'package:music_player/pages/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => PlaylistProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //theme: darkMode,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
