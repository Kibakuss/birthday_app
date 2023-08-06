import 'package:birthday_app/domain/models/guest/guest_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'guest_list_bloc_event.dart';
part 'guest_list_bloc_state.dart';
part 'guest_list_bloc_bloc.freezed.dart';

// class GuestListBloc extends Bloc<GuestListEvent, GuestListState> {
//   GuestListBloc() : super(const GuestListState(guests: [])) {
//     on<AddGuest>((event, emit) {
//       print('add');
//       final state = this.state;
//       emit(state.copyWith(
//         guests: List.from(state.guests)..add(event.guest),
//       ));
//     });
//     on<DeleteGuest>((event, emit) {
//       print('delete');
//       final state = this.state;
//       emit(state.copyWith(
//         guests: List.from(state.guests)..remove(event.guest),
//       ));
//     });
//     on<EditGuest>((event, emit) {
//       print('edit');
//       final state = this.state;
//       final index = state.guests.indexWhere((g) => g.id == event.guest.id);
//       final updatedGuests = List.from(state.guests)..[index] = event.guest;
//       // final List<Guest> updatedGuests = List.from(state.guests);
//       // updatedGuests[index] = event.guest;

//       emit(state.copyWith(guests: updatedGuests));
//     });
//   }
// }

// class GuestListBloc extends Bloc<GuestListEvent, GuestListState> {
//   GuestListBloc() : super(const GuestListState(guests: [])) {
//     on<AddGuest>((event, emit) {
//       final state = this.state;
//       print(state);
//       final List<Guest> updatedGuests = List.from(state.guests)
//         ..add(event.guest);
//       emit(state.copyWith(guests: updatedGuests));
//     });

//     on<DeleteGuest>((event, emit) {
//       print(this.state);
//       final state = this.state;
//       final List<Guest> updatedGuests = List.from(state.guests)
//         ..remove(event.guest);
//       emit(state.copyWith(guests: updatedGuests));
//     });

//     on<EditGuest>((event, emit) {
//       print(this.state);
//       final state = this.state;
//       final index = state.guests.indexWhere((g) => g.id == event.guest.id);
//       final List<Guest> updatedGuests = List.from(state.guests);
//       updatedGuests[index] = event.guest;
//       emit(state.copyWith(guests: updatedGuests));
//     });
//   }
// }

@Injectable()
class GuestListBloc extends Bloc<GuestListEvent, GuestListState> {
  final GuestRepository _repository;

  GuestListBloc(this._repository) : super(GuestListState.initial()) {
    on<LoadGuests>(_onLoadGuests);
    on<AddGuest>(_onAddGuest);
    on<UpdateGuest>(_onUpdateGuest);
    on<DeleteGuest>(_onDeleteGuest);
  }

  Future<void> _onLoadGuests(
    LoadGuests event,
    Emitter<GuestListState> emit,
  ) async {
    emit(state.copyWith(status: RequestState.loading));

    try {
      final guests = await _repository.getGuests();

      emit(state.copyWith(
        status: RequestState.loaded,
        guests: guests,
      ));
    } catch (e) {
      emit(state.copyWith(status: RequestState.error));
    }
  }

  // Другие обработчики событий
}
