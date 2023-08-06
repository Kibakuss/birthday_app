part of 'guest_list_bloc_bloc.dart';

// @freezed
// abstract class GuestListEvent with _$GuestListEvent {
//   const factory GuestListEvent.addGuest(Guest guest) = AddGuest;
//   const factory GuestListEvent.deleteGuest(Guest guest) = DeleteGuest;
//   const factory GuestListEvent.editGuest(Guest guest) = EditGuest;
// }

// guest_list_event.dart

@freezed
abstract class GuestListEvent with _$GuestListEvent {
  const factory GuestListEvent.loadGuests() = LoadGuests;

  const factory GuestListEvent.addGuest(Guest guest) = AddGuest;

  const factory GuestListEvent.updateGuest(int id, Guest guest) = UpdateGuest;

  const factory GuestListEvent.deleteGuest(int id) = DeleteGuest;
}
