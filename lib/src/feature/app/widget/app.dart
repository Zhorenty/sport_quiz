import 'package:flutter/material.dart';
import 'package:sport_quiz/src/core/widget/scope_widgets.dart';
import 'package:sport_quiz/src/feature/app/widget/app_context.dart';
import 'package:sport_quiz/src/feature/initialization/model/dependencies.dart';
import 'package:sport_quiz/src/feature/initialization/widget/dependencies_scope.dart';

/// A widget which is responsible for running the app.
class App extends StatelessWidget {
  const App({
    required this.result,
    super.key,
  });

  void run() => runApp(this);

  final InitializationResult result;

  @override
  Widget build(BuildContext context) => ScopesProvider(
        providers: [
          ScopeProvider(
            buildScope: (child) => DependenciesScope(
              dependencies: result.dependencies,
              child: child,
            ),
          ),
        ],
        child: const AppContext(),
      );
}
