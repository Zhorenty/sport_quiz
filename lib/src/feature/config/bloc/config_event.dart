import 'package:flutter/foundation.dart';

import '../../../core/utils/pattern_match.dart';

sealed class ProfileEvent extends _$ProfileEventBase {
  const ProfileEvent._();

  const factory ProfileEvent.config() = ProfileEvent$Config;
}

final class ProfileEvent$Config extends ProfileEvent {
  const ProfileEvent$Config() : super._();
}

@immutable
abstract base class _$ProfileEventBase {
  const _$ProfileEventBase();

  R map<R>({
    required PatternMatch<R, ProfileEvent$Config> config,
  }) =>
      switch (this) {
        final ProfileEvent$Config configEvent => config(configEvent),
        _ => throw UnsupportedError('Unsupported event: $this'),
      };

  R maybeMap<R>({
    required R Function() orElse,
    PatternMatch<R, ProfileEvent$Config>? config,
  }) =>
      map(config: config ?? (_) => orElse());

  @override
  String toString() => 'ProfileEvent()';

  @override
  bool operator ==(Object other) => identical(this, other);

  @override
  int get hashCode => 0;
}
