import 'dart:async';

import 'package:covid19/logic/user_model.dart';
import 'package:covid19/ui/gejala.dart';
import 'package:covid19/ui/prevention.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

Future<User> connectToAPI() async {
  String apiURL = "https://api.kawalcorona.com/indonesia/";

  var apiResult = await http.get(apiURL);
  var jsonObject = json.decode(apiResult.body);
  return User.createUser(jsonObject[0]);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<User> futureUser;

  @override
  void initState() {
    super.initState();

    futureUser = connectToAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa8d8ea),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Berita ",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          "Covid-19",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FutureBuilder<User>(
                  future: futureUser,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "POSITIF",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    snapshot.data.positif,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("images/positive.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 160,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Color(0xffeaeaea),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 5,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Text(
                                    "SEMBUH",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    snapshot.data.sembuh,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("images/sembuh.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 160,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Color(0xffeaeaea),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 5,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                FutureBuilder<User>(
                  future: futureUser,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Text(
                                    "MENINGGAL",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.yellow[900],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    snapshot.data.meninggal,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.yellow[900],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("images/meninggal.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 160,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Color(0xffeaeaea),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 5,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Text(
                                    "DIRAWAT",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color(0xff95e1d3),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    snapshot.data.dirawat,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color(0xff95e1d3),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("images/dirawat.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 160,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Color(0xffeaeaea),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 5,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Gejala(),
                SizedBox(
                  height: 30,
                ),
                Prevention(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
