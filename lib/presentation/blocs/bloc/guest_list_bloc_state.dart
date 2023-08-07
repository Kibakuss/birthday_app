part of 'guest_list_bloc_bloc.dart';

@freezed
class GuestListState with _$GuestListState {
  const factory GuestListState.initial() = GuestListInitial;
  const factory GuestListState.loading() = GuestListLoading;
  const factory GuestListState.loaded(List<Guest> guests) = GuestListLoaded;
  const factory GuestListState.error() = GuestListError;
}
