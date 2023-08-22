import 'package:sport_quiz/src/feature/initialization/logic/initialization_steps.dart';
import 'package:sport_quiz/src/feature/initialization/model/dependencies.dart';
import 'package:sport_quiz/src/feature/initialization/model/initialization_hook.dart';
import 'package:sport_quiz/src/feature/initialization/model/initialization_progress.dart';

mixin InitializationProcessor {
  Future<InitializationResult> processInitialization({
    required Map<String, StepAction> steps,
    required InitializationHook hook,
  }) async {
    final stopwatch = Stopwatch()..start();
    var stepCount = 0;

    final progress = InitializationProgress(
      dependencies: Dependencies$Mutable(),
    );

    hook.onInit?.call();
    try {
      await for (final step in Stream.fromIterable(steps.entries)) {
        stepCount++;
        final stopWatch = Stopwatch()..start();
        await step.value(progress);
        hook.onInitializing?.call(
          InitializationStepInfo(
            stepName: step.key,
            step: stepCount,
            stepsCount: steps.length,
            msSpent: (stopWatch..stop()).elapsedMilliseconds,
          ),
        );
      }
    } on Object catch (e) {
      hook.onError?.call(stepCount, e);
      rethrow;
    }
    stopwatch.stop();
    final result = InitializationResult(
      dependencies: progress.freeze(),
      stepCount: stepCount,
      msSpent: stopwatch.elapsedMilliseconds,
    );
    hook.onInitialized?.call(result);
    return result;
  }
}

class InitializationStepInfo {
  const InitializationStepInfo({
    required this.stepName,
    required this.step,
    required this.stepsCount,
    required this.msSpent,
  });

  final int step;
  final String stepName;
  final int stepsCount;
  final int msSpent;
}
