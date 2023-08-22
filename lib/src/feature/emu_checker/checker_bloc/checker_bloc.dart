import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sport_quiz/src/feature/emu_checker/data/emu_checker_repository.dart';

import '../../../core/utils/enum.dart';
import '../config_bloc/remote_config_bloc.dart';

part 'checker_event.dart';
part 'checker_state.dart';
part 'checker_bloc.freezed.dart';

class CheckerBloc extends Bloc<CheckerEvent, CheckerState> {
  final RemoteConfigBloc remoteConfigBloc;
  final urlBox = Hive.box('urlBox');

  final EmuCheckerRepository emuCheckerRepository;

  CheckerBloc({
    required this.emuCheckerRepository,
    required this.remoteConfigBloc,
  }) : super(const _State()) {
    on<Check>((event, emit) async {
      emit(state.copyWith(status: Status.submissionInProgress));
      // TODO : изменить на эмулятор false
      if ((await emuCheckerRepository.checkIsEmu())) {
        if (urlBox.get('url') == null || urlBox.get('url') == '') {
          remoteConfigBloc.add(const FetchRemoteUrl());
        } else {
          remoteConfigBloc.add(const FetchLocalUrl());
        }
        emit(state.copyWith(status: Status.submissionSuccess));
      } else {
        emit(state.copyWith(
            status: Status.submissionFailure, error: Error.emuError));
      }
    });
  }
}
