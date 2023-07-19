class AppLatLong {
  final double lat;
  final double long;

  const AppLatLong({
    required this.lat,
    required this.long,
  });
}

class MoscowLocation extends AppLatLong {
  const MoscowLocation({
    super.lat = 47.243347,
    super.long = 38.702288,
  });
}
