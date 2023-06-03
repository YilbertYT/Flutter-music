import 'package:flutter/material.dart';
import 'package:flutter_application_music/views/player.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:flutter_application_music/consts/colors.dart';
import 'package:flutter_application_music/consts/text_style.dart';
import 'package:flutter_application_music/controllers/player_controller.dart';

class Artist extends StatelessWidget {
  const Artist({Key? key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PLayerController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Artist"),
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xFF80CBC4).withOpacity(0.8),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF80CBC4),
              Color(0xFF80DEEA),
              Color(0xFF1DE9B6),
              Color(0xFF004D40),
            ],
          ),
        ),
        child: FutureBuilder<List<ArtistModel>>(
          future: controller.audioQuery.queryArtists(
            orderType: OrderType.ASC_OR_SMALLER,
          ),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              final List<ArtistModel> artists = snapshot.data!;
              return ListView.builder(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                itemCount: artists.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => _onArtistTap(artists[index], controller),
                    child: Container(
                      decoration: BoxDecoration(
                        color: tealColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.only(bottom: 15),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: tealColor,
                        title: Text(
                          artists[index].artist,
                          style: ourStyle(
                            family: bold,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        leading: QueryArtworkWidget(
                          id: artists[index].id,
                          type: ArtworkType.ARTIST,
                          nullArtworkWidget: const Icon(
                            Icons.person,
                            color: whiteColor,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: Text(
                  "No Artist Found",
                  style: ourStyle(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

void _onArtistTap(ArtistModel artist, PLayerController controller) async {
  final allSongs = await controller.audioQuery.querySongs(
    ignoreCase: true,
    orderType: OrderType.ASC_OR_SMALLER,
    sortType: null,
    uriType: UriType.EXTERNAL,
  );

  final songsByArtist =
      allSongs.where((song) => song.artistId == artist.id).toList();

  if (songsByArtist.isNotEmpty) {
    controller
        .playSongs(songsByArtist); // Reproduce todas las canciones del artista
    Get.to(() => Player(data: songsByArtist));
  }
}
