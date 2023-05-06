import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(title: Text('Data Pribadi'), actions: [
          IconButton(
            onPressed: () {
              // Tindakan yang akan dilakukan ketika tombol bagikan di tekan
            },
            icon: Icon(Icons.share),
          ),
        ]),
        body: Center(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: EdgeInsets.all(8.0),
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
                  children: <Widget>[
                    CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage('assets/profile_pic.png'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Nama: Alfrieanda',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.white,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Text(
                      'NPM: 065120050',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      'Kelas: 6B',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      'Program Studi: Ilmu Komputer',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      'Fakultas: Fmipa',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Pengen tau?')));
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: 180,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'ABOUT ME',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.email),
                          color: Colors.white,
                          onPressed: () {
                            launch("mailto:alfrieanda@mail.com");
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.phone),
                          color: Colors.white,
                          onPressed: () {
                            launch("tel:+6281584500062");
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.chat),
                          color: Colors.white,
                          onPressed: () {
                            launch("https://wa.me/+6281584500062");
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.facebook),
                          color: Colors.white,
                          onPressed: () {
                            launch(
                                "https://www.facebook.com/profile.php?id=100004967055842");
                          },
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
