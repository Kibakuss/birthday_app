part of 'guest_list_bloc_bloc.dart';

@freezed
class GuestListState with _$GuestListState {
  const factory GuestListState({
    required List<Guest> guests,
    required RequestStatus status,
  }) = _GuestListState;

  factory GuestListState.initial() => GuestListState(
        guests: [],
        status: RequestStatus.initial,
      );
}

enum RequestStatus { initial, loading, loaded, error }
