import 'package:covid19/ui/callcenter.dart';
import 'package:covid19/ui/search.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class HasilPage extends StatefulWidget {
  int score, totalPertanyaan, correct, incorrect;
  HasilPage({this.score, this.totalPertanyaan, this.correct, this.incorrect});

  @override
  _HasilPageState createState() => _HasilPageState();
}

class _HasilPageState extends State<HasilPage> {
  String greeting = "";
  @override
  void initState() {
    super.initState();

    var persentase = widget.score / (widget.totalPertanyaan * 20) * 100;
    if (persentase >= 70) {
      greeting =
          "Baik, bila saat ini Anda mengalami demam dengan suhu di atas 38°C disertai batuk dan sesak nafas sampai kesulitan untuk bicara, serta berada diwilayah zona merah, maka Anda memiliki kemungkinan yang tinggi tertular virus Corona.\nSaat ini anda disarankan untuk:\n-Hubungi Hotline Covid-19 yang sudah tertera\n-Jangan keluar rumah bila tidak untuk berobat\n-Cuci tangan selama 20 detik\n -Gunakan masker ";
    } else if (persentase <= 55) {
      greeting =
          "Baik, bila saat ini Anda tidak mengalami demam, batuk, atau sesak nafas, serta tidak memiliki faktor risiko terinfeksi virus Corona, seperti bepergian ke negara dengan wabah virus Corona, dan tidak berada di zona merah, maka risiko Anda tertular virus Corona termasuk kategori rendah.\nLangkah-langkah yang bisa Anda lakukan untuk mencegah infeksi virus Corona antara lain:\n-Gunakan masker\n-Lakukan olahraga rutin\n-Hindari kontak jarak dekat dengan penderita flu";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFE0F2F1),
                  Color(0xFFE0F7FA),
                  Color(0xFFFAFAFA),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                LottieBuilder.asset('images/construction.json'),
                Container(
                  height: 290,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.0, left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "$greeting",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 15.0),
                        child: RaisedButton(
                          child: Text(
                            "Mulai Test Ulang",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PertanyaanPage()));
                          },
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          padding: EdgeInsets.only(top: 15.0),
                          child: RaisedButton(
                            child: Text(
                              "Hotline Covid-19",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CallCenterPage()));
                            },
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
