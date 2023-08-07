
// abstract class GuestDataSource {
//   Future<List<Guest>> getGuests();

//   Future<void> addGuest(Guest guest);

//   Future<void> updateGuest(Guest guest);

//   Future<void> deleteGuest(int id);
// }

// class GuestDataSourceImpl implements GuestDataSource {
//   final _box = Hive.box<GuestModel>('guests');

//   @override
//   Future<List<Guest>> getGuests() async {
//     final guestModels = _box.values;
//     return guestModels.map((model) => model.toDomain()).toList();
//   }

//   @override
//   Future<void> addGuest(Guest guest) async {
//     final model = GuestModel.fromDomain(guest);
//     await _box.add(model);
//   }

//   @override
//   Future<void> updateGuest(Guest guest) async {
//     final model = _box.values.firstWhere((element) => element.id == guest.id);
//     model.name = guest.name;
//     model.surname = guest.surname;
//     model.phone = guest.phone;
//     model.profession = guest.profession;
//     await model.save();
//   }

//   @override
//   Future<void> deleteGuest(int id) async {
//     final model = _box.values.firstWhere((element) => element.id == id);
//     await model.delete();
//   }
// }

// class GuestRepositoryImpl implements GuestRepository {
//   final HiveDataSource hiveDataSource;

//   GuestRepositoryImpl(this.hiveDataSource);

//   @override
//   Future<List<GuestEntity>> getAllGuests() async {
//     return hiveDataSource.getAllGuests();
//   }

//   @override
//   Future<List<GuestEntity>> getAllGuestsSorted(String sortingOption) async {
//     return hiveDataSource.getAllGuestsSorted(sortingOption);
//   }

//   @override
//   Future<void> addGuest(GuestEntity guest) async {
//     return hiveDataSource.addGuest(guest);
//   }

//   @override
//   Future<void> updateGuest(GuestEntity guest) async {
//     return hiveDataSource.updateGuest(guest);
//   }

//   @override
//   Future<void> deleteGuest(GuestEntity guest) async {
//     return hiveDataSource.deleteGuest(guest);
//   }
// }
