import 'package:flutter/material.dart';
import 'package:marvel_app/character_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2 - 100,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/background1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'MARVEL CHARACTERS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Get hooked on a hearty helping of heroes and villains\nfrom the humble House of Ideas!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/background2.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(child: CharacterSlider()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
