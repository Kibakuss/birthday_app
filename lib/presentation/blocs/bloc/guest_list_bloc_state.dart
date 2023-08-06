part of 'guest_list_bloc_bloc.dart';

// @freezed
// abstract class GuestListState with _$GuestListState {
//   const factory GuestListState({
//     required List<Guest> guests,
//   }) = _GuestListState;
// }

@freezed
class GuestListState with _$GuestListState {
  const factory GuestListState({
    required List<Guest> guests,
    required RequestState status,
  }) = _GuestListState;

  factory GuestListState.initial() => GuestListState(
        guests: [],
        status: RequestState.initial(),
      );
}

enum RequestState { initial, loading, loaded, error }

// guest_list_bloc.dart
