import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ScreenMap extends StatefulWidget {
  ScreenMap({Key? key}) : super(key: key);

  @override
  _ScreenMapState createState() => _ScreenMapState();
}

class _ScreenMapState extends State<ScreenMap> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(8.6746561, 76.574098); // IHRD institution coordinates

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _openInGoogleMaps() async {
  final String googleMapsUrl = 'https://www.google.com/maps/place/Institute+of+Human+Resources+Development+(IHRD)/@8.4569303,76.8691582,13.04z/data=!4m10!1m2!2m1!1sihrd+tvm!3m6!1s0x3b05bb48e8c93b45:0x156ca6bb97c491ca!8m2!3d8.4918331!4d76.9237185!15sCghpaHJkIHR2bZIBEWdvdmVybm1lbnRfb2ZmaWNl4AEA!16s%2Fg%2F11qn9wftyv?entry=ttu';
  if (await canLaunch(googleMapsUrl)) {
    await launch(googleMapsUrl);
  } else {
    throw 'Could not launch $googleMapsUrl';
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openInGoogleMaps,
        tooltip: 'Open in Google Maps',
        child: Icon(Icons.location_on),
      ),
    );
  }
}
