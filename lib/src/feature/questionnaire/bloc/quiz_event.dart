part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  const factory QuizEvent.parse() = Parse;
  const factory QuizEvent.addScore() = AddScore;
}
