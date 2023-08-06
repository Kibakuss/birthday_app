import 'package:birthday_app/domain/models/guest/guest_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class GuestRepository {
  final _box = Hive.box<Guest>('guests');

  Future<List<Guest>> getGuests() async {
    return _box.values.toList();
  }

  Future<void> addGuest(Guest guest) async {
    await _box.add(guest);
  }

  Future<void> updateGuest(Guest guest) async {
    await guest.save();
  }

  Future<void> deleteGuest(int id) async {
    final guest = _box.values.firstWhere((guest) => guest.id == id);
    await guest.delete();
  }
}
