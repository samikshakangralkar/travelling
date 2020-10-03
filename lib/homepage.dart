import 'package:flutter/material.dart';
import 'package:travel/itemlist.dart';
import 'package:travel/list.dart';
import 'package:travel/list2.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = [
    {
      "i":
      "https://lonelyplanetstatic.imgix.net/op-video-sync/images/production/p-5590712365001-brightcove-introducing-the-maldives-20171006-052043.jpg",
    },
    {
      "i":
      "https://images.france.fr/zeaejvyq9bhj/50SO3DJD5YKw4IqYOaamsk/f95f447bce27eb58a51546a54db9ac77/1120x490-Montagne.jpg?w=1120&h=491&q=70&fl=progressive&fit=fill",
    },
    {
      "i":
      "http://3.bp.blogspot.com/-ajb9yHOYHfw/UQfGY5VrP_I/AAAAAAAAfLk/Mx7HUpk4lS4/s1600/altai-mountains-wallpapers.jpg",
    },
    {
      "i":
      "https://tse4.mm.bing.net/th?id=OIP.q91f6f56XoXpoO2HpcIKKwHaE7&pid=Api&P=0&w=277&h=185",
    },
    {
      "i":
      "https://tse4.mm.bing.net/th?id=OIP.q91f6f56XoXpoO2HpcIKKwHaE7&pid=Api&P=0&w=277&h=185",
    },
  ];
  var place = [
    {
      "i":
      "https://tse1.mm.bing.net/th?id=OIP.MF5cod0lsAH4hd4VsiSbegHaFj&pid=Api&rs=1&c=1&qlt=95&w=131&h=98",
    },
    {
      "i":
      "http://4.bp.blogspot.com/-PBEUQyELx14/TbvPysmku7I/AAAAAAAAAUA/CBjDidtw-b0/s1600/flowerland%2Bwallpapers%2B%25284%2529.jpg",
    },
    {
      "i":
      "http://3.bp.blogspot.com/-ajb9yHOYHfw/UQfGY5VrP_I/AAAAAAAAfLk/Mx7HUpk4lS4/s1600/altai-mountains-wallpapers.jpg",
    },
    {
      "i":
      "https://tse4.mm.bing.net/th?id=OIP.q91f6f56XoXpoO2HpcIKKwHaE7&pid=Api&P=0&w=277&h=185",
    },
    {
      "i":
      "https://tse4.mm.bing.net/th?id=OIP.q91f6f56XoXpoO2HpcIKKwHaE7&pid=Api&P=0&w=277&h=185",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, top: 25),
                      child: Icon(
                        Icons.apps,
                        color: Colors.cyan,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, top: 25),
                      child: Icon(
                        Icons.search,
                        color: Colors.cyan,
                        size: 30,
                      ),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.cyan,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Welcome aboard!',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                      onPressed: () => {},
                                      tooltip: 'close',
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.black38,
                                        size: 20,
                                      )),
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'we\'ll find for you the best experience based on what you need',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Lets start',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Where do you want to?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 05),
                    itemBuilder: (_, int index) => ItemList(
                      color: [
                        Colors.cyan,
                        Colors.grey,
                        Colors.cyan,
                        Colors.grey,
                      ][index % 4],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Top Traveller Picks", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
                Container(
                  height: 150,
                  child: ListView.builder(
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, int index) => SamList(image: data[index]["i"]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Text("Popular Place",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
                Container(
                  height: 150,
                  child: ListView.builder(
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, int index) => SamListt(image: place[index]["i"]),
                  ),
                ),



              ],

            ),
          ),
        ),
      ),
    );
  }
}
