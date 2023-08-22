import 'package:sport_quiz/src/feature/emu_checker/data/emu_checker_data_source.dart';

/// TODO: docs
abstract class EmuCheckerRepository {
  Future<bool> checkIsEmu();
}

class EmuCheckerRepositoryImpl implements EmuCheckerRepository {
  EmuCheckerRepositoryImpl({required EmuCheckerDataSource emuCheckerDataSource})
      : _emuCheckerDataSource = emuCheckerDataSource;

  ///
  final EmuCheckerDataSource _emuCheckerDataSource;

  @override
  Future<bool> checkIsEmu() => _emuCheckerDataSource.checkIsEmu();
}
