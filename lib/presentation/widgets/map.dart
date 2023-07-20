import 'dart:async';

import 'package:birthday_app/domain/app_lat_long.dart';
import 'package:birthday_app/domain/location_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapWindow extends StatefulWidget {
  const MapWindow({Key? key}) : super(key: key);

  @override
  State<MapWindow> createState() => _MapWindowState();
}

class _MapWindowState extends State<MapWindow> {
  final mapControllerCompleter = Completer<YandexMapController>();

  @override
  void initState() {
    super.initState();
    _initPermission().ignore();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 246.h,
      child: YandexMap(
        mapObjects: [
          PlacemarkMapObject(
              text: const PlacemarkText(
                  text: 'Радуга',
                  style:
                      PlacemarkTextStyle(placement: TextStylePlacement.right)),
              mapId: const MapObjectId('polygon'),
              point: const Point(latitude: 47.243347, longitude: 38.702288),
              icon: PlacemarkIcon.single(PlacemarkIconStyle(
                  zIndex: 4,
                  image: BitmapDescriptor.fromAssetImage(
                      'assets/images/route_start.png')))),
        ],
        onMapCreated: (controller) {
          mapControllerCompleter.complete(controller);
        },
      ),
    );
  }

  /// Проверка разрешений на доступ к геопозиции пользователя
  Future<void> _initPermission() async {
    if (!await LocationService().checkPermission()) {
      await LocationService().requestPermission();
    }
    await _fetchCurrentLocation();
  }

  /// Получение текущей геопозиции пользователя
  Future<void> _fetchCurrentLocation() async {
    AppLatLong location;
    const defLocation = MoscowLocation();
    try {
      location = await LocationService().getCurrentLocation();
    } catch (_) {
      location = defLocation;
    }
    _moveToCurrentLocation(location);
  }

  /// Метод для показа текущей позиции
  Future<void> _moveToCurrentLocation(
    AppLatLong appLatLong,
  ) async {
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: appLatLong.lat,
            longitude: appLatLong.long,
          ),
          zoom: 10,
        ),
      ),
    );
  }
}
