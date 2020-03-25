import 'package:flutter/material.dart';
import 'constants.dart';

class CharacterPage extends StatelessWidget {
  final index;

  CharacterPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0C11),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Hero(
                    tag: characterList[index]['imgUrl'],
                    child: Image.asset(
                      characterList[index]['imgUrl'],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Image.asset('assets/images/nametag.png'),
                ),
                Positioned(
                  bottom: 25,
                  left: 20,
                  child: Text(
                    characterList[index]['real_name'].toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    characterList[index]['hero_name'].toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    characterList[index]['description'],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  NewsCard(0),
                  NewsCard(1),
                  NewsCard(2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final index;

  NewsCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 2 - 25,
            child: Image.asset(latestNews[index]['imgUrl']),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2 - 25,
            child: Column(
              children: <Widget>[
                Text(
                  latestNews[index]['tag'],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  latestNews[index]['title'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
