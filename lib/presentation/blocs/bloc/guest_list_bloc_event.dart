part of 'guest_list_bloc_bloc.dart';

@freezed
class GuestListEvent with _$GuestListEvent {
  const factory GuestListEvent.loadGuests() = LoadGuests;
  const factory GuestListEvent.addGuest(Guest guest) = AddGuest;
  const factory GuestListEvent.updateGuest(Guest guest) = UpdateGuest;
  const factory GuestListEvent.deleteGuest(int id) = DeleteGuest;
}
