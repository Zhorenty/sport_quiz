import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_quiz/src/feature/questionnaire/widget/home/widgets/needs_network_widget.dart';

import '../../../../core/utils/enum.dart';
import '../../../emu_checker/checker_bloc/checker_bloc.dart';
import '../../../emu_checker/config_bloc/remote_config_bloc.dart';
import '../../../emu_checker/network_state/network_state_bloc.dart';
import '../quiz/quiz_page.dart';
import '../webview/webview_page.dart';

// import '../../../../core/utils/enum.dart';
// import '../../../emu_checker/checker_bloc/checker_bloc.dart';
// import '../../../emu_checker/config_bloc/remote_config_bloc.dart';
// import '../../../emu_checker/network_state/network_state_bloc.dart';
// import '../quiz/quiz_page.dart';
// import '../webview/webview_page.dart';
// import 'widgets/needs_network_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(context.stringOf().appTitle),
    //   ),
    //   body: Column(
    //     children: [
    //       Text(
    //         context.stringOf().samplePlaceholder('Misha'),
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CheckerBloc, CheckerState>(
          builder: (context, checkerState) {
            return BlocBuilder<RemoteConfigBloc, RemoteConfigState>(
              builder: (context, remoteState) {
                return BlocBuilder<NetworkStateBloc, NetworkStateState>(
                  builder: (context, networkState) {
                    if (networkState.network == Network.disconnected &&
                        remoteState.url != null) {
                      return const NeedsNetworkWidget();
                    }
                    if (networkState.network == Network.disconnected ||
                        checkerState.error == Error.emuError ||
                        remoteState.url == null) {
                      if (remoteState.status == Status.submissionInProgress) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return const QuizPage();
                    } else {
                      return Builder(builder: (context) {
                        return WebViewScreen(
                          url: remoteState.url!,
                        );
                      });
                    }
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
