import 'package:birthday_app/domain/models/guest/guest_model.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectable
class GuestRepository {
  final _guests = <Guest>[];

  Future<List<Guest>> getGuests() async {
    // имитация загрузки
    await Future.delayed(Duration(seconds: 1));
    return _guests;
  }

  Future<void> addGuest(Guest guest) async {
    // генерация id
    final id = _guests.isEmpty ? 1 : _guests.last.id + 1;
    final newGuest = guest.copyWith(id: id);

    // добавление
    _guests.add(newGuest);
  }
}

// abstract class GuestRepository {
//   Future<List<Guest>> getGuests();
//   Future<void> addGuest(Guest guest);
//   Future<void> updateGuest(Guest guest);
//   Future<void> deleteGuest(int id);
// }

// class GuestRepositoryImpl implements GuestRepository {
//   final guestDataSource = GetIt.I<GuestDataSource>();

//   @override
//   Future<List<Guest>> getGuests() async {
//     return guestDataSource.getGuests();
//   }

//   @override
//   Future<void> addGuest(Guest guest) {
//     return guestDataSource.addGuest(guest);
//   }

//   @override
//   Future<void> updateGuest(Guest guest) {
//     return guestDataSource.updateGuest(guest);
//   }

//   @override
//   Future<void> deleteGuest(int id) {
//     return guestDataSource.deleteGuest(id);
//   }
// }
