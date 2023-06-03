import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
            Color(0xFF80CBC4),
            Color(0xFF80DEEA),
            Color(0xFF1DE9B6),
            Color(0xFF004D40),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30, top: 20),
                    child: Image.asset(
                      "assest/img/music (3).png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Higth Music',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      //backgroundColor: Colors.teal.shade400
                    ),
                  ),
                ],
              ),
              //SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 10,
                  left: 10,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      //FILA 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Favoritos
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                //RaisedButton esta deprecado
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF004D40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ), // Background color
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/favorites");
                                  },
                                  child: SizedBox(
                                    width: 150,
                                    height: 180,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 40),
                                          Image.asset(
                                            "assest/img/estrella (1).png",
                                            width: 70,
                                            height: 70,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            "Favorites",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Albums
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                //RaisedButton esta deprecado
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF004D40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ), // Background color
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/albums");
                                  },
                                  child: SizedBox(
                                    width: 150,
                                    height: 180,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 40),
                                          Image.asset(
                                            "assest/img/vinyl (1).png",
                                            width: 70,
                                            height: 70,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            "Albums",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //FILA 2
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //PlayList
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                //RaisedButton esta deprecado
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF004D40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/playlist");
                                  },
                                  child: SizedBox(
                                    width: 150,
                                    height: 180,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 40),
                                          Image.asset(
                                            "assest/img/music (1).png",
                                            width: 70,
                                            height: 70,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            "PlayList",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Folders
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                //RaisedButton esta deprecado
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF004D40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ), // Background color
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/folders");
                                  },
                                  child: SizedBox(
                                    width: 150,
                                    height: 180,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 30),
                                          Image.asset(
                                            "assest/img/playlist (1).png",
                                            width: 75,
                                            height: 75,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            "Folders",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //FILA 3
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Artist
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                //RaisedButton esta deprecado
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF004D40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ), // Background color
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/artist");
                                  },
                                  child: SizedBox(
                                    width: 150,
                                    height: 180,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 40),
                                          Image.asset(
                                            "assest/img/artist.png",
                                            width: 70,
                                            height: 70,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            "Artist",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //All Music
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                //RaisedButton esta deprecado
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF004D40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ), // Background color
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/allmusic");
                                  },
                                  child: SizedBox(
                                    width: 150,
                                    height: 180,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 40),
                                          Image.asset(
                                            "assest/img/music (3).png",
                                            width: 70,
                                            height: 70,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            "All Music",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _CardFavoritas() {
    return Card(
      elevation: 5,
      color: Colors.greenAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const <Widget>[
            // FadeInImage(placeholder: AssetImage('assetName'), image: image)
          ],
        ),
      ),
    );
  }
}
