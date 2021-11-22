import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanggraloka_ta/model/site.dart';
import 'package:sanggraloka_ta/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import 'error_page.dart';

class DetailSite extends StatefulWidget {
  final Site site;
  DetailSite(this.site);
  @override
  _DetailSiteState createState() => _DetailSiteState();
}

class _DetailSiteState extends State<DetailSite> {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: hitamColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  //STACK0
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 430,
                      ),
                      Text(
                        'Description',
                        style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        //DESCRIPTION
                        widget.site.desc,
                        style: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Location',
                        style: regularTextStyle.copyWith(
                            fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.site.location,
                            style: greyTextStyle.copyWith(fontSize: 14),
                          ),
                          InkWell(
                            onTap: () {},
                            child: IconTheme(
                              data: IconThemeData(color: yellowColor),
                              child: InkWell(
                                onTap: () {
                                  launchUrl(widget.site.mapUrl);
                                },
                                child: Icon(
                                  Icons.place_rounded,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  //STACK1
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    color: darkColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 280),
                        Text(
                          widget.site.nameCountry, //TITLE
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: yellowColor),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //ICON
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: yellowColor,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${widget.site.rating}",
                                  style: GoogleFonts.poppins(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                // SizedBox(
                                //   width: 70,
                                // ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.cloud,
                                  color: yellowColor,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '${widget.site.temp}ºC',
                                  style: GoogleFonts.poppins(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                // SizedBox(
                                //   width: 60,
                                // ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.lock_clock,
                                  color: yellowColor,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  widget.site.duration,
                                  style: GoogleFonts.poppins(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                    //STACK2
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image.network(widget.site.imageUrl)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
