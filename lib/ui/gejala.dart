import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gejala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: <Widget>[
              Text(
                "Gejala ",
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
        SizedBox(
          height: 10,
        ),
        Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 2),
                    color: Colors.grey,
                    blurRadius: 5,
                  ),
                ],
                color: Color(0xffeaeaea),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffeaeaea),
                      image: DecorationImage(
                        image: AssetImage("images/Dizzy.png"),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 250,
                    child: Text(
                      "Sakit kepala karena Covid-19 umumnya digambarkan sebagai sensasi yang sangat berat. Biasanya itu (sakit kepala) semakin buruk dengan adanya batuk dan demam",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 2),
                    color: Colors.grey,
                    blurRadius: 5,
                  ),
                ],
                color: Color(0xffeaeaea),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffeaeaea),
                      image: DecorationImage(
                        image: AssetImage("images/Fever.png"),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 250,
                    child: Text(
                      "Demam adalah tanda kunci Covid-19. Karena beberapa orang dapat memiliki suhu tubuh inti lebih rendah atau lebih tinggi dari suhu normal 37.6 derajat",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 2),
                    color: Colors.grey,
                    blurRadius: 5,
                  ),
                ],
                color: Color(0xffeaeaea),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffeaeaea),
                      image: DecorationImage(
                        image: AssetImage("images/Flu.png"),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 250,
                    child: Text(
                      "Gejala flu Covid-19 dengan flu biasa berbeda. Untuk gejala Flu Covid-19 penderita Covid-19 juga bisa mengalami nyeri otot, sakit kepala, sakit tenggorokan, hidung tersumbat, pilek, atau diare.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 2),
                    color: Colors.grey,
                    blurRadius: 5,
                  ),
                ],
                color: Color(0xffeaeaea),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffeaeaea),
                      image: DecorationImage(
                        image: AssetImage("images/SoreThroat.png"),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 250,
                    child: Text(
                        "Sakit tenggorokan adalah penyakit yang gejalanya sangat umum dan bisa menyerupai penyakit lain. Rasa tak nyaman karena sakit tenggorokan bisa mirip flu, pilek, bahkan Covid-19 atau infeksi virus corona",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
