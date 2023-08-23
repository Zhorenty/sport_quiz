import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_quiz/src/feature/config/bloc/config_bloc.dart';
import 'package:sport_quiz/src/feature/config/bloc/config_state.dart';

import '../../../connection/connectivity_cubit.dart';
import '../../../connection/widget/information_widget.dart';
import '../quiz/quiz_page.dart';
import '../webview/webview_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, checkerState) {
          final networkState =
              BlocProvider.of<ConnectivityCubit>(context).state;

          if (!networkState.hasInternet && checkerState.url != null) {
            return const InformationWidget();
          }

          if (!networkState.hasInternet || checkerState.url == null) {
            if (checkerState.isIdling) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return const QuizPage();
          } else {
            return Builder(builder: (context) {
              return WebViewScreen(url: checkerState.url!);
            });
          }
        },
      ),
    );
  }
}
