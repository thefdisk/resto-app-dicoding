part of 'scheduling_bloc.dart';

@freezed
class SchedulingEvent with _$SchedulingEvent {
  const factory SchedulingEvent.checked() = _Checked;
  const factory SchedulingEvent.changed(bool value) = _Changed;
}
