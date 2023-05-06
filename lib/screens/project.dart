import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const url = 'https://github.com/Alfrieanda';
    final Uri github = Uri.parse(url);
    projetCard(lang, title, description, star) {
      return Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 145,
        child: Card(
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang,
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 11,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 11),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.lightBlue,
                      size: 15,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      star,
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {
                        launchUrl(github);
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          color: Colors.white,
        ),
      );
    }

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(title: Text('Project'), actions: [
          IconButton(
            onPressed: () {
              // Tindakan yang akan dilakukan ketika tombol bagikan di tekan
            },
            icon: Icon(Icons.share),
          ),
        ]),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  projetCard('DART', 'codelab-dart', 'Tugas', '1'),
                  projetCard('C++', 'Aplikasi Sederhana',
                      'Mobile-App-Vokasi-Unpak', '1'),
                  projetCard('WEBSITE', 'Sewa Lapangan Futsal',
                      'Pemesanan Lapangan', '1'),
                  projetCard('-', '-', '-', '1'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
