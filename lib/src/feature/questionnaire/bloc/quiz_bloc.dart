import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/quiz.dart';
import '/src/core/utils/enum.dart';
import '/src/core/utils/json_utils.dart';
part 'quiz_event.dart';
part 'quiz_state.dart';
part 'quiz_bloc.freezed.dart';

/// TODO: Refactor
class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc() : super(const _QuizState()) {
    on<Parse>((event, emit) async {
      emit(state.copyWith(status: Status.submissionInProgress));
      try {
        final result = await JsonParserService.parse();
        emit(
            state.copyWith(quizList: result, status: Status.submissionSuccess));
      } catch (e) {
        emit(state.copyWith(status: Status.submissionFailure));
        throw Exception(e);
      }
    });
    on<AddScore>((event, emit) {
      final newScore = state.score + 10;
      emit(state.copyWith(score: newScore));
    });
  }
}
