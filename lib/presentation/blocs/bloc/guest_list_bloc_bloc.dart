import 'package:birthday_app/domain/models/guest/guest_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_list_bloc_event.dart';
part 'guest_list_bloc_state.dart';
part 'guest_list_bloc_bloc.freezed.dart';

class GuestListBloc extends Bloc<GuestListEvent, GuestListState> {
  GuestListBloc() : super(const GuestListState(guests: [])) {
    on<AddGuest>((event, emit) {
      final state = this.state;
      emit(state.copyWith(
        guests: List.from(state.guests)..add(event.guest),
      ));
    });
    on<DeleteGuest>((event, emit) {
      final state = this.state;
      emit(state.copyWith(
        guests: List.from(state.guests)..remove(event.guest),
      ));
    });
    on<EditGuest>((event, emit) {
      final state = this.state;
      final index = state.guests.indexWhere((g) => g.id == event.guest.id);
      final List<Guest> updatedGuests = List.from(state.guests);
      updatedGuests[index] = event.guest;

      emit(state.copyWith(guests: updatedGuests));
    });
  }
}
