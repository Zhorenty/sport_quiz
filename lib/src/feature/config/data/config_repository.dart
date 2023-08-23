import 'package:sport_quiz/src/feature/config/data/config_data_source.dart';

abstract interface class ConfigRepository {
  Future<String> getLocalConfig();

  Future<String> getRemoteConfig();
}

class ConfigRepositoryImpl implements ConfigRepository {
  ConfigRepositoryImpl(this._dataSource);

  final RemoteConfigDataSource _dataSource;

  @override
  Future<String> getLocalConfig() async {
    final localConfig = await _dataSource.loadLocalConfig();

    return localConfig;
  }

  @override
  Future<String> getRemoteConfig() async {
    final remoteConfig = await _dataSource.loadRemoteConfig();

    return remoteConfig;
  }
}
