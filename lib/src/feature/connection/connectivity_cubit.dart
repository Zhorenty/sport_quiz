import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

@immutable
class ConnectivityState {
  const ConnectivityState(this.hasInternet);

  final bool hasInternet;

  @override
  String toString() => 'ConnectivityState($hasInternet)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectivityState &&
          runtimeType == other.runtimeType &&
          hasInternet == other.hasInternet;

  @override
  int get hashCode => hasInternet.hashCode;
}

class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit() : super(const ConnectivityState(false)) {
    checkConnectivity();
  }

  Future<void> checkConnectivity() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        emit(const ConnectivityState(true));
      }
    } on SocketException catch (_) {
      emit(const ConnectivityState(false));
    }
  }
}
