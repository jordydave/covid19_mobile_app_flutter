import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Rs4 extends StatefulWidget {
  @override
  _Rs4State createState() => _Rs4State();
}

class _Rs4State extends State<Rs4> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(-6.2155136, 106.7108048);

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("-6.2155136,106.7108048"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          height: 150,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: _currentPosition,
              zoom: 14,
            ),
            markers: _markers,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 30,
          ),
          child: Text(
            "Tekan marker merah untuk navigasi",
            style: GoogleFonts.montserrat(),
          ),
        ),
      ],
    );
  }
}
