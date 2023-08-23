import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_quiz/src/core/widget/scope_widgets.dart';
import 'package:sport_quiz/src/feature/config/bloc/config_event.dart';
import 'package:sport_quiz/src/feature/connection/connectivity_cubit.dart';
import 'package:sport_quiz/src/feature/initialization/model/dependencies.dart';
import 'package:sport_quiz/src/feature/initialization/widget/dependencies_scope.dart';

import '../../config/bloc/config_bloc.dart';
import '../../questionnaire/bloc/quiz_bloc.dart';
import 'app_context.dart';

/// A widget which is responsible for running the app.
class App extends StatelessWidget {
  const App({
    required this.result,
    super.key,
  });

  void run() => runApp(this);

  final InitializationResult result;

  @override
  Widget build(BuildContext context) {
    ProfileBloc profileBloc = ProfileBloc(
      configRepository: result.dependencies.configRepository,
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectivityCubit>(
          create: (BuildContext context) => ConnectivityCubit(),
        ),
        BlocProvider<QuizBloc>(
          create: (BuildContext context) => QuizBloc()..add(const Parse()),
        ),
        BlocProvider<ProfileBloc>(
          create: (BuildContext context) =>
              profileBloc..add(const ProfileEvent.config()),
        ),
      ],
      child: ScopeProvider(
        buildScope: (child) => DependenciesScope(
          dependencies: result.dependencies,
          child: child,
        ),
        child: const AppContext(),
      ),
    );
  }
}
