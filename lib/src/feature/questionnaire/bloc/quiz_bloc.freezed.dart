// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() parse,
    required TResult Function() addScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? parse,
    TResult? Function()? addScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? parse,
    TResult Function()? addScore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Parse value) parse,
    required TResult Function(AddScore value) addScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Parse value)? parse,
    TResult? Function(AddScore value)? addScore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Parse value)? parse,
    TResult Function(AddScore value)? addScore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res, QuizEvent>;
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res, $Val extends QuizEvent>
    implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParseCopyWith<$Res> {
  factory _$$ParseCopyWith(_$Parse value, $Res Function(_$Parse) then) =
      __$$ParseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParseCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res, _$Parse>
    implements _$$ParseCopyWith<$Res> {
  __$$ParseCopyWithImpl(_$Parse _value, $Res Function(_$Parse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Parse implements Parse {
  const _$Parse();

  @override
  String toString() {
    return 'QuizEvent.parse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Parse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() parse,
    required TResult Function() addScore,
  }) {
    return parse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? parse,
    TResult? Function()? addScore,
  }) {
    return parse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? parse,
    TResult Function()? addScore,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Parse value) parse,
    required TResult Function(AddScore value) addScore,
  }) {
    return parse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Parse value)? parse,
    TResult? Function(AddScore value)? addScore,
  }) {
    return parse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Parse value)? parse,
    TResult Function(AddScore value)? addScore,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(this);
    }
    return orElse();
  }
}

abstract class Parse implements QuizEvent {
  const factory Parse() = _$Parse;
}

/// @nodoc
abstract class _$$AddScoreCopyWith<$Res> {
  factory _$$AddScoreCopyWith(
          _$AddScore value, $Res Function(_$AddScore) then) =
      __$$AddScoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddScoreCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$AddScore>
    implements _$$AddScoreCopyWith<$Res> {
  __$$AddScoreCopyWithImpl(_$AddScore _value, $Res Function(_$AddScore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddScore implements AddScore {
  const _$AddScore();

  @override
  String toString() {
    return 'QuizEvent.addScore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddScore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() parse,
    required TResult Function() addScore,
  }) {
    return addScore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? parse,
    TResult? Function()? addScore,
  }) {
    return addScore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? parse,
    TResult Function()? addScore,
    required TResult orElse(),
  }) {
    if (addScore != null) {
      return addScore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Parse value) parse,
    required TResult Function(AddScore value) addScore,
  }) {
    return addScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Parse value)? parse,
    TResult? Function(AddScore value)? addScore,
  }) {
    return addScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Parse value)? parse,
    TResult Function(AddScore value)? addScore,
    required TResult orElse(),
  }) {
    if (addScore != null) {
      return addScore(this);
    }
    return orElse();
  }
}

abstract class AddScore implements QuizEvent {
  const factory AddScore() = _$AddScore;
}

/// @nodoc
mixin _$QuizState {
  List<Quiz>? get quizList => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call({List<Quiz>? quizList, Status status, int score});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizList = freezed,
    Object? status = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      quizList: freezed == quizList
          ? _value.quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<Quiz>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizStateCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$$_QuizStateCopyWith(
          _$_QuizState value, $Res Function(_$_QuizState) then) =
      __$$_QuizStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Quiz>? quizList, Status status, int score});
}

/// @nodoc
class __$$_QuizStateCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$_QuizState>
    implements _$$_QuizStateCopyWith<$Res> {
  __$$_QuizStateCopyWithImpl(
      _$_QuizState _value, $Res Function(_$_QuizState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizList = freezed,
    Object? status = null,
    Object? score = null,
  }) {
    return _then(_$_QuizState(
      quizList: freezed == quizList
          ? _value._quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<Quiz>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuizState implements _QuizState {
  const _$_QuizState(
      {final List<Quiz>? quizList, this.status = Status.empty, this.score = 0})
      : _quizList = quizList;

  final List<Quiz>? _quizList;
  @override
  List<Quiz>? get quizList {
    final value = _quizList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final int score;

  @override
  String toString() {
    return 'QuizState(quizList: $quizList, status: $status, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizState &&
            const DeepCollectionEquality().equals(other._quizList, _quizList) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_quizList), status, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizStateCopyWith<_$_QuizState> get copyWith =>
      __$$_QuizStateCopyWithImpl<_$_QuizState>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {final List<Quiz>? quizList,
      final Status status,
      final int score}) = _$_QuizState;

  @override
  List<Quiz>? get quizList;
  @override
  Status get status;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$_QuizStateCopyWith<_$_QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}
