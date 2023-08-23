import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sport_quiz/src/core/utils/emu_checker.dart';
import 'package:sport_quiz/src/feature/config/data/config_repository.dart';

import 'config_event.dart';
import 'config_state.dart';

final class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.configRepository})
      : super(const ProfileState.idle()) {
    on<ProfileEvent>(
      (event, emit) => event.map(
        config: (e) => _fetch(e, emit),
      ),
    );
  }

  final ConfigRepository configRepository;
  final url = Hive.box('urlBox').get('url');

  Future<void> _fetch(
    ProfileEvent$Config event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.processing());
    try {
      final String remoteConfig = await configRepository.getRemoteConfig();
      final String localConfig = await configRepository.getLocalConfig();

      if (await EmuCheckerUtil.checkIsEmu()) {
        if (url == null || url == '') {
          emit(ProfileState.idle(url: remoteConfig));
        } else {
          emit(ProfileState.idle(url: localConfig));
        }
      } else {
        const ProfileState.idle(error: 'SubmissionFailure');
      }
    } on Object catch (e) {
      emit(ProfileState.idle(error: e.toString()));
      rethrow;
    }
  }
}
