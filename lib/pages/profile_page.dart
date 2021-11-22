import 'package:flutter/material.dart';
import 'package:sanggraloka_ta/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141211),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Color(0xff252525),
                  height: 150,
                  width: double.infinity,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                              'https://regonline.undip.ac.id/data/foto_ktm/21120119130065.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 225),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  'Muhammad Dzulfiqar Rafli Anwar',
                                  style: whiteTextStyle.copyWith(fontSize: 18),
                                ),
                                Text('21120119130065', style: whiteTextStyle.copyWith(fontSize: 16),)
                              ],
                            ),
                          ),
                          Center(
                            child: Text(
                              'Flutter',
                              style: greyTextStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('About App',
                                style: whiteTextStyle.copyWith()),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text('Pada Tugas Akhir Praktikum Mobile Device Programming ini saya membuat aplikasi sederhana pencarian resort, villa, atau hotel dengan nama Sanggraloka menggunakan Flutter. Pada aplikasi ini akan menampilkan informasi seputar harga, detail ruangan, lokasi, rating, dan fasilitas pada resort. Selain menampilkan informasi pada resort dan menyediakan fitur pemesanan, pada aplikasi ini juga akan ditampilkan rekomendasi tempat liburan di musim panas. ',textAlign: TextAlign.justify,
                                style: greyTextStyle.copyWith()),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
