part of 'guest_list_bloc_bloc.dart';

@freezed
abstract class GuestListEvent with _$GuestListEvent {
  const factory GuestListEvent.addGuest(Guest guest) = AddGuest;
  const factory GuestListEvent.deleteGuest(Guest guest) = DeleteGuest;
  const factory GuestListEvent.editGuest(Guest guest) = EditGuest;
}
