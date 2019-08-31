import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'src/locations.dart' as locations;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final rappiLocations = await locations.getRappiLocations();
    setState(() {
      _markers.clear();
      for (final store in rappiLocations.stores) {
        final marker = Marker(
          markerId: MarkerId(store.name),
          position: LatLng(store.location.lat, store.location.lng),
          infoWindow: InfoWindow(
            title: store.name,
//            snippet: store.address,
          ),
        );
        _markers[store.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Rappi Locations'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: const LatLng(-12.1259195,-77.0291146),
          zoom: 15,
        ),
        markers: _markers.values.toSet(),
      ),
    ),
  );
}
