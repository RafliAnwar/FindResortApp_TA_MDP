import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sanggraloka_ta/model/site.dart';
import 'package:sanggraloka_ta/providers/site_provider.dart';
import 'package:sanggraloka_ta/theme.dart';
import 'package:sanggraloka_ta/widgets/site_card.dart';

class HomeTour extends StatefulWidget {
  @override
  _HomeTourState createState() => _HomeTourState();
}

class _HomeTourState extends State<HomeTour> {
  @override
  Widget build(BuildContext context) {
    var siteProvider = Provider.of<SiteProvider>(context);
    //sitesProvider.getRecommendedSites();

    return Scaffold(
      backgroundColor: hitamColor,
      body: ListView(
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
                      'Most People Go\nIn Summer',
                      style: whiteTextStyle.copyWith(fontSize: 24),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/travel_logo.png',
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Popular Sites', //POPULAR Toursites
                  style: regularTextStyle.copyWith(
                      fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),

          FutureBuilder(
            future: siteProvider.getRecommendedSites(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Site> data = snapshot.data;
                //int index = 0;
                return Column(
                  children: data.map((item) {
                    //index++;
                    return Container(
                      child: SiteCard(item),
                    );
                  }).toList(),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          // SiteCard(),
          // SiteCard(),
          // SiteCard(),
          // SiteCard(),
        ],
      ),
    );
  }
}
