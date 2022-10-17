part of 'scheduling_bloc.dart';

@freezed
class SchedulingState with _$SchedulingState {
  const factory SchedulingState({
    @Default(false) bool isScheduled,
  }) = _SchedulingState;

  factory SchedulingState.initial() => const SchedulingState();
}
