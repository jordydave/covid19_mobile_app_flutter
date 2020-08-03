import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Rs2 extends StatefulWidget {
  @override
  _Rs2State createState() => _Rs2State();
}

class _Rs2State extends State<Rs2> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(-6.2150293, 106.8348196);

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("-6.2150293,106.8348196"),
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
