import 'package:covid19/logic/data.dart';
import 'package:covid19/logic/pertanyaan_model.dart';
import 'package:covid19/ui/awal.dart';
import 'package:covid19/ui/hasil.dart';
import 'package:flutter/material.dart';

import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class PertanyaanPage extends StatefulWidget {
  @override
  _PertanyaanPageState createState() => _PertanyaanPageState();
}

class _PertanyaanPageState extends State<PertanyaanPage>
    with SingleTickerProviderStateMixin {
  List<PertanyaanModel> pertanyaan = new List<PertanyaanModel>();
  int index = 0;
  int points = 0;
  int correct = 0;
  int incorrect = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pertanyaan = getPertanyaan();
  }

  void nextQuestion() {
    if (index < pertanyaan.length - 1) {
      index++;
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HasilPage(
                    score: points,
                    totalPertanyaan: pertanyaan.length,
                    correct: correct,
                    incorrect: incorrect,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          backgroundColor: Colors.blueAccent,
          flexibleSpace: Positioned(
            bottom: 0.0,
            left: 100.0,
            top: 70.0,
            child: Container(
              margin: EdgeInsets.all(40.0),
              child: Text(
                "Periksa Covid - 19",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Awal()));
        },
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 80),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "${index + 1}/${pertanyaan.length}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pertanyaan",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              pertanyaan[index].getPertanyaan() + "?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      if (pertanyaan[index].getJawaban() == "Iya") {
                        setState(() {
                          points = points + 20;
                          nextQuestion();
                          correct++;
                        });
                      } else {
                        setState(() {
                          points = points + 20;
                          nextQuestion();
                          incorrect++;
                        });
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(24)),
                      child: Text(
                        "Iya",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      if (pertanyaan[index].getJawaban() == "Tidak") {
                        setState(() {
                          points = points - 5;
                          nextQuestion();
                          correct++;
                        });
                      } else {
                        setState(() {
                          points = points - 5;
                          nextQuestion();
                          incorrect++;
                        });
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(24)),
                      child: Text(
                        "Tidak",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  "Link Aplikasi Peduli Lindungi",
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: Linkify(
                onOpen: _onOpen,
                text:
                    "https://play.google.com/store/apps/details?id=com.telkom.tracencare",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}
