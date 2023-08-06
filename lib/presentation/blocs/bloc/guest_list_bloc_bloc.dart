import 'package:birthday_app/domain/models/guest/guest_model.dart';
import 'package:birthday_app/domain/repository/guest_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

part 'guest_list_bloc_event.dart';
part 'guest_list_bloc_state.dart';
part 'guest_list_bloc_bloc.freezed.dart';

@injectable
class GuestListBloc extends Bloc<GuestListEvent, GuestListState> {
  final _repository = GetIt.I.get<GuestRepository>();

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
    final guests = await _repository.getGuests();
    emit(state.copyWith(guests: guests, status: RequestStatus.loaded));
  }

  Future<void> _onAddGuest(AddGuest event, Emitter<GuestListState> emit) async {
    await _repository.addGuest(event.guest);
    emit(state.copyWith(guests: [...state.guests, event.guest]));
  }

  Future<void> _onUpdateGuest(
      UpdateGuest event, Emitter<GuestListState> emit) async {
    await _repository.updateGuest(event.guest);
    emit(state.copyWith(guests: [...state.guests]));
  }

  Future<void> _onDeleteGuest(
      DeleteGuest event, Emitter<GuestListState> emit) async {
    await _repository.deleteGuest(event.id);
    emit(state.copyWith(guests: state.guests..remove(event.id)));
  }
}
