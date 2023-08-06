import 'package:birthday_app/domain/models/guest/guest_model.dart';

class GuestRepository {
  // Источник данных, может быть БД, API и т.д.
  final _dataSource = GuestLocalDataSource();

  Future<List<Guest>> getGuests() async {
    return _dataSource.getGuests();
  }

  Future<void> addGuest(Guest guest) {
    return _dataSource.addGuest(guest);
  }
}
