import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PreventionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 170,
          width: 150,
          child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.loose,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffeaeaea),
                  child: Container(
                    height: 156,
                    width: 134,
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Cuci \nTangan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Color(0xffeaeaea),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: LottieBuilder.asset('images/washyourhands.json'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 170,
          width: 150,
          child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.loose,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffeaeaea),
                  child: Container(
                    height: 156,
                    width: 134,
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Karantina\n Mandiri",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Color(0xffeaeaea),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: LottieBuilder.asset('images/staysafe.json'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 170,
          width: 150,
          child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.loose,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffeaeaea),
                  child: Container(
                    height: 156,
                    width: 134,
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Jaga\n Jarak",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Color(0xffeaeaea),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        child:
                            LottieBuilder.asset('images/socialdistancing.json'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 170,
          width: 150,
          child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.loose,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffeaeaea),
                  child: Container(
                    height: 156,
                    width: 134,
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Berdiam di\n Rumah",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Color(0xffeaeaea),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: LottieBuilder.asset('images/stayhome.json'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 170,
          width: 150,
          child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.loose,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffeaeaea),
                  child: Container(
                    height: 156,
                    width: 134,
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Kerja dari\n Rumah",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Color(0xffeaeaea),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: LottieBuilder.asset('images/workfromhome.json'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 170,
          width: 150,
          child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.loose,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffeaeaea),
                  child: Container(
                    height: 156,
                    width: 134,
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Pakai\n Masker",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Color(0xffeaeaea),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: LottieBuilder.asset('images/pakaimasker.json'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
