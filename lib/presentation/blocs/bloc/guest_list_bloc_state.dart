part of 'guest_list_bloc_bloc.dart';

@freezed
abstract class GuestListState with _$GuestListState {
  const factory GuestListState({
    required List<Guest> guests,
  }) = _GuestListState;
}
