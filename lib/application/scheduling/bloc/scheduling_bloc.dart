import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/application/background_service/background_service.dart';
import 'package:resto_app_dicoding/common/constant/app_constant.dart';
import 'package:resto_app_dicoding/common/functions/app_functions.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'scheduling_event.dart';
part 'scheduling_state.dart';
part 'scheduling_bloc.freezed.dart';

@injectable
class SchedulingBloc extends Bloc<SchedulingEvent, SchedulingState> {
  final SharedPreferences _prefs;

  SchedulingBloc(this._prefs) : super(SchedulingState.initial()) {
    on<SchedulingEvent>(_onSchedulingEvent);
  }

  Future<void> _onSchedulingEvent(
    SchedulingEvent event,
    Emitter<SchedulingState> emit,
  ) {
    return event.map(
      checked: (e) async {
        final isScheduled = _prefs.getBool(kIsScheduling) ?? false;

        emit(
          state.copyWith(
            isScheduled: isScheduled,
          ),
        );
      },
      changed: (e) async {
        _prefs.setBool(kIsScheduling, e.value);

        if (e.value) {
          debugPrint('Scheduling Restaurant Activated');
          await AndroidAlarmManager.periodic(
            const Duration(
              hours: 24,
            ),
            1,
            BackgroundService.callback,
            startAt: dateTimeHelper(),
            exact: true,
            wakeup: true,
          );
        } else {
          debugPrint('Scheduling Restaurant Canceled');
          await AndroidAlarmManager.cancel(1);
        }

        emit(
          state.copyWith(
            isScheduled: e.value,
          ),
        );
      },
    );
  }
}
