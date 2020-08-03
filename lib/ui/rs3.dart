import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Rs3 extends StatefulWidget {
  @override
  _Rs3State createState() => _Rs3State();
}

class _Rs3State extends State<Rs3> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(-6.1854555, 106.8378404);

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("-6.1854555,106.8378404"),
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
