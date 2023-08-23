import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hive/hive.dart';

abstract interface class RemoteConfigDataSource {
  Future<String> loadRemoteConfig();

  Future<String> loadLocalConfig();
}

class RemoteConfigDataSourceImpl implements RemoteConfigDataSource {
  RemoteConfigDataSourceImpl();

  final urlBox = Hive.box('urlBox');

  @override
  Future<String> loadLocalConfig() async {
    return await urlBox.get('url');
  }

  @override
  Future<String> loadRemoteConfig() async {
    late String url;

    await FirebaseRemoteConfig.instance.fetchAndActivate().then((_) {
      url = FirebaseRemoteConfig.instance.getString("url");
    });
    await urlBox.put('url', url);

    return url;
  }
}
