import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanggraloka_ta/model/site.dart';
import 'package:sanggraloka_ta/pages/detail_second.dart';
import '../theme.dart';

class SiteCard extends StatelessWidget {
  final Site site;
  SiteCard(this.site);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailSite(site)));
      },
      child: Container(
        height: 250,
        width: double.infinity,
        margin: EdgeInsets.only(left: edge, right: edge, bottom: edge),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                site.imageUrl,
                fit: BoxFit.cover,
                height: 250,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 80,
                width: 300,
                margin: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      site.name,
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        IconTheme(
                          data: IconThemeData(color: yellowColor),
                          child: Icon(Icons.place_rounded),
                        ),
                        Text(
                          site.location,
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: whiteColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
