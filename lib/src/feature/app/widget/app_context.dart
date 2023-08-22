import 'package:flutter/material.dart';
import 'package:sport_quiz/src/core/localization/app_localization.dart';
import 'package:sport_quiz/src/core/theme/theme.dart';

import '../../../core/router/router.dart';

/// A widget which is responsible for providing the app context.
class AppContext extends StatefulWidget {
  const AppContext({super.key});

  @override
  State<AppContext> createState() => _AppContextState();
}

class _AppContextState extends State<AppContext> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        supportedLocales: AppLocalization.supportedLocales,
        localizationsDelegates: AppLocalization.localizationsDelegates,
        theme: $lightThemeData,
        darkTheme: $darkThemeData,
        locale: const Locale('en'),
        onGenerateRoute: AppRoutes.onGenerateRoutes,
      );
}
