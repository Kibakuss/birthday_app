import 'package:birthday_app/domain/models/guest/guest_model.dart';
import 'package:birthday_app/domain/repository/guest_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_list_bloc_event.dart';
part 'guest_list_bloc_state.dart';
part 'guest_list_bloc_bloc.freezed.dart';

class GuestListBloc extends Bloc<GuestListEvent, GuestListState> {
  final _repository = GuestRepository();

  GuestListBloc() : super(GuestListInitial()) {
    on<LoadGuests>(_onLoadGuests);
    on<AddGuest>(_onAddGuest);
  }

  Future<void> _onLoadGuests(
    LoadGuests event,
    Emitter<GuestListState> emit,
  ) async {
    final guests = await _repository.getGuests();
    print(guests);
    print('GuestListLoaded');

    emit(GuestListLoaded(guests));
    // print('GuestListLoading');
    // emit(GuestListLoading());

    // try {
    //   final guests = await _repository.getGuests();
    //   print(guests);
    //   print('GuestListLoaded');
    //   emit(GuestListLoaded(guests));
    // } catch (_) {
    //   print('GuestListError');
    //   emit(const GuestListError());
    // }
  }

  Future<void> _onAddGuest(
    AddGuest event,
    Emitter<GuestListState> emit,
  ) async {
    await _repository.addGuest(event.guest);
    final updatedGuests = await _repository.getGuests();
    emit(GuestListLoaded(updatedGuests));
    // try {
    //   await _repository.addGuest(event.guest);
    //   print('AddGuest');
    //   add(LoadGuests());
    //   final updatedGuests = await _repository.getGuests();
    //   print(updatedGuests);
    //   print('ща GuestListLoaded с новым списком');
    //   emit(GuestListLoaded(updatedGuests));
    //   print('сработал лоадед');
    // } catch (_) {
    //   print('Eror');
    //   emit(GuestListError());
    // }
  }
}
