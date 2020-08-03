import 'package:covid19/ui/prevention_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Prevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: <Widget>[
              Text(
                "Pencegahan ",
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
        SizedBox(height: 10),
        Container(
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 30,
              ),
              PreventionCard(),
            ],
          ),
        )
      ],
    );
  }
}
