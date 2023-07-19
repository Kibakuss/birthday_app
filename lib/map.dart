import 'dart:async';

import 'package:birthday_app/domain/app_lat_long.dart';
import 'package:birthday_app/domain/location_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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
              text: PlacemarkText(text: 'Радуга', style: PlacemarkTextStyle()),
              mapId: MapObjectId('polygon'),
              point: Point(latitude: 47.243347, longitude: 38.702288),
              icon: PlacemarkIcon.single(PlacemarkIconStyle(
                  zIndex: 4,
                  image: BitmapDescriptor.fromAssetImage(
                      'assets/images/route_start.png')))),
          // MapObject(
          //   // Координаты метки
          //   point: Point(latitude: 47.243347, longitude: 38.702288),

          //   // Иконка метки
          //   icon: PlacemarkIcon.single(
          //       PlacemarkIconStyle(image: AssetImage('assets/marker.png'))),
          // ),
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

// class MapPage extends StatefulWidget {
//   @override
//   _MapPageState createState() => _MapPageState();
// }

// class _MapPageState extends State<MapPage> {
//   final _mapController = MapController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: YandexMap(
//         onMapCreated: (YandexMapController yandexMapController) async {
//           _mapController.complete(yandexMapController);
//         },
//         mapObjects: [
//           MapObject(
//             point: Point(
//               latitude: 47.243347,
//               longitude: 38.702288,
//             ),
//             icon: PlacemarkIcon.single(
//               PlacemarkIconStyle(
//                 image: AssetImage('assets/marker.png'),
//               ),
//             ),
//           )
//         ],
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             child: Icon(Icons.zoom_out),
//             onPressed: () {
//               _mapController.future.then((controller) {
//                 controller.moveCamera(CameraUpdate.zoomOut());
//               });
//             },
//           ),
//           SizedBox(height: 8),
//           FloatingActionButton(
//             child: Icon(Icons.zoom_in),
//             onPressed: () {
//               _mapController.future.then((controller) {
//                 controller.moveCamera(CameraUpdate.zoomIn());
//               });
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
