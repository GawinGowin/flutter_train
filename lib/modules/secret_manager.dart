import 'package:google_secret_manager/google_secret_manager.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<void> initSecretManager() async{
  final path = 'assets/service-account.json';
  final json = await rootBundle.loadString(path);
  await GoogleSecretManager.initViaServiceAccountJson(json);
}