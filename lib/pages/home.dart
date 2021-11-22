import 'package:flutter/material.dart';
import 'package:sanggraloka_ta/model/city.dart';
import 'package:sanggraloka_ta/model/space.dart';
import 'package:sanggraloka_ta/providers/space_provider.dart';
import 'package:sanggraloka_ta/theme.dart';
import 'package:sanggraloka_ta/widgets/city_card.dart';
import 'package:provider/provider.dart';
import 'package:sanggraloka_ta/widgets/space_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double edge = 24;
  @override
  Widget build(BuildContext context) {
  var spaceProvider = Provider.of<SpaceProvider>(context);
  // spaceProvider.getRecommendedSpace();

    return Scaffold(
      extendBody: true,
      backgroundColor: hitamColor,
      body: ListView( //TITLE HEADER
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Let’s enjoy your\nVacation',
                      style: whiteTextStyle.copyWith(fontSize: 24),
                    ),
                    Spacer(),
                    Image.asset('assets/logo.png', width: 32,)
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Popular Cities', //POPULAR CITIES
                  style: regularTextStyle.copyWith(
                      fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: edge,
                ),
                CityCard(
                  City(
                    id: 1,
                    name: 'Bali',
                    imageURL: 'assets/city1.png',
                  ),
                ),
                SizedBox(width: 20),
                CityCard(
                  City(
                      id: 2,
                      name: 'Athena',
                      imageURL: 'assets/city2.png',
                      isPopular: true),
                ),
                SizedBox(width: 20),
                CityCard(
                  City(
                      id: 3, 
                      name: 'Kyoto', 
                      imageURL: 'assets/city4.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                      id: 4, 
                      name: 'Rome', 
                      imageURL: 'assets/city3.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                      id: 5,
                      name: 'Andalusia',
                      imageURL: 'assets/city5.png',
                      isPopular: true),
                ),
                SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(id: 6, name: 'Semarang', imageURL: 'assets/city6.png'),
                ),
                SizedBox(
                  width: 24,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: edge, top: 30),
            child: Text(
              'Recommended Resort',
              style: regularTextStyle.copyWith(
                  fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: FutureBuilder(
                future: spaceProvider.getRecommendedSpace(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data;
                    int index = 0;
                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(top: index == 1 ? 0 : 30),
                          child: SpaceCard(item),
                        );
                      }).toList(),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
