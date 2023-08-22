import 'package:sport_quiz/src/feature/initialization/model/dependencies.dart';

/// Initialization progress
/// @nodoc
final class InitializationProgress {
  const InitializationProgress({required this.dependencies});

  /// Mutable version of dependencies
  final Dependencies$Mutable dependencies;

  /// Freeze dependencies, so they cannot be modified
  Dependencies freeze() => dependencies.freeze();
}
