import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/enum.dart';
import '../../bloc/quiz_bloc.dart';
import 'widgets/quiz_pageview_widget.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuizBody(),
    );
  }
}

class QuizBody extends StatelessWidget {
  const QuizBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          if (state.status == Status.submissionInProgress) {
            return const SizedBox();
          }
          if (state.status == Status.submissionSuccess &&
              state.quizList != null) {
            return Column(
              children: [
                Text(
                  'your score: ${state.score}',
                  style: const TextStyle(fontSize: 24),
                ),
                Expanded(
                  child: QuizPageViewBuilder(
                    quiz: state.quizList!,
                  ),
                ),
              ],
            );
          }
          return const Text('something went wrong');
        },
      ),
    );
  }
}
