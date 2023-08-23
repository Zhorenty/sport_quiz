import 'package:flutter/foundation.dart';

import '../../../core/utils/pattern_match.dart';

sealed class ProfileState extends _$ProfileStateBase {
  const ProfileState._({super.url, super.error});

  const factory ProfileState.idle({
    String? url,
    String? error,
  }) = _ProfileState$Idle;

  const factory ProfileState.processing({
    String? url,
    String? error,
  }) = _ProfileState$Processing;
}

final class _ProfileState$Idle extends ProfileState {
  const _ProfileState$Idle({super.url, super.error}) : super._();
}

final class _ProfileState$Processing extends ProfileState {
  const _ProfileState$Processing({super.url, super.error}) : super._();
}

@immutable
abstract base class _$ProfileStateBase {
  const _$ProfileStateBase({this.url, this.error});

  @nonVirtual
  final String? url;

  @nonVirtual
  final String? error;

  bool get hasError => error != null;

  bool get hasUrl => url != null || url != '';

  bool get isProcessing => maybeMap(
        processing: (_) => true,
        orElse: () => false,
      );

  bool get isIdling => maybeMap(
        idle: (_) => true,
        orElse: () => false,
      );

  R map<R>({
    required PatternMatch<R, _ProfileState$Idle> idle,
    required PatternMatch<R, _ProfileState$Processing> processing,
  }) =>
      switch (this) {
        final _ProfileState$Idle idleState => idle(idleState),
        final _ProfileState$Processing processingState =>
          processing(processingState),
        _ => throw UnsupportedError('Unsupported state: $this'),
      };

  R maybeMap<R>({
    required R Function() orElse,
    PatternMatch<R, _ProfileState$Idle>? idle,
    PatternMatch<R, _ProfileState$Processing>? processing,
  }) =>
      map(
        idle: idle ?? (_) => orElse(),
        processing: processing ?? (_) => orElse(),
      );

  @override
  String toString() => 'ProfileState(url: $url, error: $error)';

  @override
  bool operator ==(Object other) => identical(this, other);

  @override
  int get hashCode => Object.hash(url, error);
}
