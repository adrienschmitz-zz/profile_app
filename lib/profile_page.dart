import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:profile_app/work.dart';
import 'package:url_launcher/url_launcher.dart';

import 'courses.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

_makingPhoneCall() async {
  const url = 'tel:+5551920000264';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _mailcontact() async {
  final url = 'mailto:adrien.schmitz@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _ProfilePageState extends State<ProfilePage> {
  static String tag = 'profile-page';

  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/me2.jpg', height: 200)),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 222,
                        height: 220,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adrien Schmitz',
                              style: TextStyle(fontSize: 32),
                            ),
                            Text(
                              'Programador',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.grey),
                            ),
                            SizedBox(height: 40),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffFEEBDD),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: new IconButton(
                                      color: Color(0xffFBB97C),
                                      icon: new Icon(Icons.contact_mail),
                                      onPressed: _mailcontact),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffFEF2F0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: new IconButton(
                                      icon: new Icon(Icons.contact_phone),
                                      color: Color(0xffFB7780),
                                      onPressed: _makingPhoneCall),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffEBECEF),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: new IconButton(
                                      color: Color(0xffA7AAB9),
                                      icon: new Icon(Icons.duo),
                                      onPressed: _makingPhoneCall),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Sobre',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 16),
              Text(
                'Com amplo conhecimento em suporte técnico e mais de 10 anos de experência, está investindo agora na programação, área em que dedicou toda formação ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 135,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Endereço',
                          style: TextStyle(
                              color: Colors.black87.withOpacity(0.7),
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 228,
                          child: Text(
                            'Rua Saldanha da Gama, 98 Tramandaí Rio Grande do Sul',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            const url = 'https://goo.gl/maps/j12WkjtvmWc7vBar9';
                            launchURL(url);
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset('assets/mapa_casa.png')))
                    ],
                  )
                ],
              ),
              Text(
                'Curriculo',
                style: TextStyle(
                    color: Color(0xff242424),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 155,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return CoursesPage();
                          }),
                        );
                      },
                      child: Text('Escolaridade e competências',
                          style: TextStyle(fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 251, 185, 124)),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 155,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return WorkPage();
                          }),
                        );
                      },
                      child: Text(
                        'Experiência',
                        style: TextStyle(fontSize: 16),
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xffA5A5A5)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
