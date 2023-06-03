import 'package:flutter/material.dart';
import 'package:flutter_application_music/paginas/Listas/lista1.dart';
import 'package:flutter_application_music/paginas/Listas/lista2.dart';
import 'package:flutter_application_music/paginas/Listas/sdcard.dart';
import 'package:flutter_application_music/paginas/Screens/albums.dart';
import 'package:flutter_application_music/paginas/Screens/allmusic.dart';
import 'package:flutter_application_music/paginas/Screens/artist.dart';
import 'package:flutter_application_music/paginas/Screens/favoritas.dart';
import 'package:flutter_application_music/paginas/Screens/folders.dart';
import 'package:flutter_application_music/paginas/Screens/playlist.dart';
import 'package:flutter_application_music/paginas/Screens/splash_screen.dart';
import 'package:flutter_application_music/views/player.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
    routes: <String, WidgetBuilder>{
      "/favorites": (context) => const Favoritas(),
      "/albums": (context) => const Albums(),
      "/playlist": (context) => const PlayList(),
      "/folders": (context) => const Folders(),
      "/artist": (context) => const Artist(),
      "/allmusic": (context) => const AllMusic(),
      "/sdcard": (context) => const SDcar(),
      "/lista1": (context) => const Lista1(),
      "/lista2": (context) => const Lista2(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp();
  }
}
