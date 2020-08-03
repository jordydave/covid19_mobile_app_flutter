import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Rs6 extends StatefulWidget {
  @override
  _Rs6State createState() => _Rs6State();
}

class _Rs6State extends State<Rs6> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(-6.4924883, 106.6400016);

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("-6.4924883,106.6400016"),
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
