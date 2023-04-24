import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_secret_manager/google_secret_manager.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

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

  @override
  Widget build(BuildContext context) {
    final key = loadApiKey();

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

Future<String> loadApiKey() async{
  // 再びこのページを開くと、
  // _Exception (Exception: GoogleSecretManager is already initialized)
  // おそらく、main.dartで行う必要がありそうだ
  final path = 'assets/service-account.json';
  final json = await rootBundle.loadString(path);

  await GoogleSecretManager.initViaServiceAccountJson(json);
  final response = await GoogleSecretManager.instance.get('GoogleMapAPI');
  final String decodedKey = utf8.decode(base64Url.decode(response.payload!.data!));

  return decodedKey;
}