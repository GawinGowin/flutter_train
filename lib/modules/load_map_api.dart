import 'package:google_secret_manager/google_secret_manager.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadApiKey() async{
  final path = 'assets/service-account.json';
  final json = await rootBundle.loadString(path);

  await GoogleSecretManager.initViaServiceAccountJson(json);
  final response = await GoogleSecretManager.instance.get('GoogleMapAPI');
  final String decodedKey = utf8.decode(base64Url.decode(response.payload!.data!));

  return decodedKey;
}
