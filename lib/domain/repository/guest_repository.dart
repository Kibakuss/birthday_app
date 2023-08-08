import 'package:birthday_app/domain/models/guest/guest_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

// class GuestRepository {
//   final _box = Hive.box<Guest>('guests');

//   Future<List<Guest>> getGuests() async {
//     return _box.values.toList();
//   }

//   Future<void> addGuest(Guest guest) async {
//     await _box.add(guest);
//   }

//   Future<void> updateGuest(Guest guest) async {
//     await guest.save();
//   }

//   Future<void> deleteGuest(int id) async {
//     final guest = _box.values.firstWhere((guest) => guest.id == id);
//     await guest.delete();
//   }
// }

abstract class GuestRepository {
  Future<List<Guest>> getGuests();
  Future<void> addGuest(Guest guest);
  Future<void> updateGuest(Guest guest);
  Future<void> deleteGuest(int id);
}

@LazySingleton(as: GuestRepository)
class GuestRepositoryImpl implements GuestRepository {
  static const _boxName = 'guests';

  @override
  Future<List<Guest>> getGuests() async {
    final box = await _openBox();
    return box.values.toList().cast<Guest>();
  }

  @override
  Future<void> addGuest(Guest guest) async {
    final box = await _openBox();
    await box.add(guest);
  }

  @override
  Future<void> updateGuest(Guest guest) async {
    final box = await _openBox();
    final index = box.values.toList().indexOf(guest);
    await box.putAt(index, guest);
  }

  @override
  Future<void> deleteGuest(int id) async {
    final box = await _openBox();
    final guest = box.values.firstWhere((guest) => guest.id == id);
    await box.delete(guest.key);
  }

  Future<Box> _openBox() async {
    return await Hive.openBox(_boxName);
  }
}
