import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_quiz/src/feature/config/data/config_data_source.dart';
import 'package:sport_quiz/src/feature/initialization/model/dependencies.dart';
import 'package:sport_quiz/src/feature/initialization/model/initialization_progress.dart';

import '../../config/data/config_repository.dart';

typedef StepAction = FutureOr<void>? Function(InitializationProgress progress);

/// The initialization steps, which are executed in the order they are defined.
///
/// The [Dependencies] object is passed to each step, which allows the step to
/// set the dependency, and the next step to use it.
mixin InitializationSteps {
  final initializationSteps = <String, StepAction>{
    'Shared Preferences': (progress) async {
      final sharedPreferences = await SharedPreferences.getInstance();
      progress.dependencies.sharedPreferences = sharedPreferences;
    },
    'Config Repository': (progress) async {
      final configRepository = ConfigRepositoryImpl(
        RemoteConfigDataSourceImpl(),
      );
      progress.dependencies.configRepository = configRepository;
    },
  };
}
