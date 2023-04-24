import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_secret_manager/google_secret_manager.dart';
import 'dart:convert';


class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  String _data = "";

  @override
  void initState() {
    super.initState();
    _loadApiKey();
  }

  void _loadApiKey() async {
    final response = await GoogleSecretManager.instance.get('GoogleMapAPI');
    final String decodedKey = utf8.decode(base64Url.decode(response.payload!.data!));
    setState((){
      _data = decodedKey;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(_data);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.map),
        title: const Text('ColorPalette'),
        centerTitle: true,
        elevation: 10,
      ),
      body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      );
  }
}
