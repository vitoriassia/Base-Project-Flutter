import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final storage = FlutterSecureStorage();

  getID() async => await storage.read(key: "id");

  setAccessToken(String accessToken) async =>
      await storage.write(key: 'access_token', value: accessToken);

  Future<String> get accessToken async =>
      await storage.read(key: 'access_token');

  Future<String> get notificationToken async =>
      await storage.read(key: 'notification_token');

  addstorage(String key, String value) async =>
      await storage.write(key: key, value: value);

  Future<void> clear() async {
    await storage.deleteAll();
  }
}
